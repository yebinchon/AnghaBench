
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int B4 ;
 int B5 ;
 int B6 ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;
 int writePinHigh (int ) ;
 int writePinLow (int ) ;

void led_set_kb(uint8_t usb_led) {
  if (usb_led & (1<<USB_LED_NUM_LOCK)) {
    writePinLow(B4);
  } else {
    writePinHigh(B4);
  }
  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {
    writePinLow(B6);
  } else {
    writePinHigh(B6);
  }
  if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {
    writePinLow(B5);
  } else {
    writePinHigh(B5);
  }

  led_set_user(usb_led);
}
