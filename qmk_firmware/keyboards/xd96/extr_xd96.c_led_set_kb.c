
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CAPS_PIN ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int NUMLOCK_PIN ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int led_set_user (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
  if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
    writePinLow(CAPS_PIN);
  } else {
    writePinHigh(CAPS_PIN);
  }

  if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
    writePinLow(NUMLOCK_PIN);
  } else {
    writePinHigh(NUMLOCK_PIN);
  }

  led_set_user(usb_led);
}
