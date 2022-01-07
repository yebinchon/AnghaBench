
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int ph_caps_led_off () ;
 int ph_caps_led_on () ;
 int ph_sclk_led_off () ;
 int ph_sclk_led_on () ;

void led_set_user(uint8_t usb_led) {
  if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
    ph_caps_led_on();
  } else {
    ph_caps_led_off();
  }

  if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
    ph_sclk_led_on();
    } else {
    ph_sclk_led_off();
  }
}
