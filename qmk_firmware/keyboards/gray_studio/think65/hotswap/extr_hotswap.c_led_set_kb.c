
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int C6 ;
 int C7 ;
 int F7 ;
 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int ) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {


  if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
    writePinLow(C7);
  } else {
    writePinHigh(C7);
  }

  if (IS_LED_ON(usb_led, USB_LED_NUM_LOCK)) {
    writePinLow(C6);
  } else {
    writePinHigh(C6);
  }

  if (IS_LED_ON(usb_led, USB_LED_SCROLL_LOCK)) {
    writePinLow(F7);
  } else {
    writePinHigh(F7);
  }

  led_set_user(usb_led);
}
