Given(/^I am on the app$/) do
	settings_button = find_element(:id, 'protect.budgetwatch:id/action_settings')
  expect(exists{settings_button}).to be true
end

When(/^I click the settings button$/) do
	settings_button = find_element(:id, 'protect.budgetwatch:id/action_settings')
	settings_button.click
  quality_setting_title = find_element(:id, 'android:id/title')
  expect(exists{quality_setting_title}).to be true
end

Then(/^I can change the receipt quality setting to 0$/) do
  quality_settings = find_elements(:id, 'android:id/title')
  quality_settings[0].click
  quality_setting_title = find_element(:id, 'android:id/title')
  expect(exists{quality_setting_title}).to be true
end