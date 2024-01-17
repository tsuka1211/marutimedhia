require 'selenium-webdriver'

# ChromeDriverのパスを指定
chrome_driver_path = '/usr/local/bin/chromedriver'

# ChromeDriverの初期化
browser = Selenium::WebDriver.for :chrome, driver_path: chrome_driver_path

url = 'https://sp.nogizaka46.com/'
browser.get(url)

# ボタンのクリック
elem_login_btn = browser.find_element(:class, "rounded")
elem_login_btn.click

# メールアドレスでのログイン選択画面
sleep(2)
elem_mail_btn = browser.find_elements(:css, ".flex.w-full.items-center.justify-between.rounded-md.bg-blueGray-700.p-12.text-14.font-semibold.tracking-wider.text-white.mt-2")
elem_mail_btn[3].click

# メールアドレス、パスワード入力画面
sleep(2)
browser.find_element(:xpath, "(//input[@type='email'])").send_keys("abcdefghijklmnopq")
browser.find_element(:xpath, "(//input[@type='password'])").send_keys("abcdefghijklmnopq")
elem_login2_btn = browser.find_element(:class, "css-y5yuzb")
elem_login2_btn.click

# モバイル画面
sleep(2)
elem_live_btn = browser.find_elements(:css, ".flex.flex-grow")
elem_live_btn[1].click

sleep(2)
# 注意事項同意画面
elem_attention_btn = browser.find_elements(:css, ".checkbox.h-24.w-24")
elem_attention_btn[0].click
sleep(2)
elem_attention_btn[1].click
sleep(2)
elem_day_btn = browser.find_elements(:css, ".button-primary.mx-auto.min-w-240")
elem_day_btn[0].click

# 個人情報記入画面
sleep(3)
elem_credit_btn = browser.find_element(:id, 'radio2')
elem_credit_btn.click
sleep(2)
elem_lastname_btn = browser.find_element(:id, 'last_name')
elem_lastname_btn.send_keys('月火水木君曜日金土日')
elem_firstname_btn = browser.find_element(:id, 'first_name')
elem_firstname_btn.send_keys('月火水木君曜日金土日')
elem_lastnamekana_btn = browser.find_element(:id, 'last_name_kana')
elem_lastnamekana_btn.send_keys('アイウエオアイウエオ')
elem_firstnamekana_btn = browser.find_element(:id, 'first_name_kana')
elem_firstnamekana_btn.send_keys('ガハハハハハハ')
elem_firstnamekana_btn = browser.find_element(:id, 'email_1')
elem_firstnamekana_btn.send_keys('kakikukekokakikukeko')
elem_firstnamekana_btn = browser.find_element(:id, 'email_1_confirm')
elem_firstnamekana_btn.send_keys('kakikukekokakikukeko')
elem_firstnamekana_btn = browser.find_element(:id, 'zip')
elem_firstnamekana_btn.send_keys('1000014')
elem_firstnamekana_btn = browser.find_element(:id, 'city')
elem_firstnamekana_btn.send_keys('千代田区')
elem_firstnamekana_btn = browser.find_element(:id, 'address_1')
elem_firstnamekana_btn.send_keys('永田町1-7-1')
elem_firstnamekana_btn = browser.find_element(:id, 'tel_1')
elem_firstnamekana_btn.send_keys('123456789')

elem_credit_btn = browser.find_element(:id, 'sex-sex-0')
elem_credit_btn.click

elem_credit_btn = browser.find_element(:id, '申込時の注意事項等.0')
elem_credit_btn.click
elem_firstnamekana_btn = browser.find_element(:id, '申込者名・姓(来場代表者苗字)')
elem_firstnamekana_btn.send_keys('月火水木君曜日金土日')
elem_firstnamekana_btn = browser.find_element(:id, '申込者名・名')
elem_firstnamekana_btn.send_keys('月火水木君曜日金土日')
elem_firstnamekana_btn = browser.find_element(:id, '申込者電話番号(半角・ハイフン不要)')
elem_firstnamekana_btn.send_keys('123456789')
elem_firstnamekana_btn = browser.find_element(:id, '同行者・姓')
elem_firstnamekana_btn.send_keys('あいうえおあいうえお')
elem_firstnamekana_btn = browser.find_element(:id, '同行者名・名')
elem_firstnamekana_btn.send_keys('あいうえおあいうえお')
elem_firstnamekana_btn = browser.find_element(:id, '同行者電話番号(半角・ハイフン不要)')
elem_firstnamekana_btn.send_keys('0123456789')
elem_firstnamekana_btn = browser.find_element(:id, '同行者住所')
elem_firstnamekana_btn.send_keys('あいうえおあいうえお')
elem_firstnamekana_btn = browser.find_element(:id, '同行者メールアドレス')
elem_firstnamekana_btn.send_keys('sinndokunattekita')
elem_credit_btn = browser.find_element(:id, '最終確認.0')
elem_credit_btn.click

elem_firstnamekana_btn = browser.find_element(:id, 'review_password')
elem_firstnamekana_btn.send_keys('mazidezikannnomuda')

# 10分間待機
sleep(600)

# ブラウザを閉じる
browser.quit
