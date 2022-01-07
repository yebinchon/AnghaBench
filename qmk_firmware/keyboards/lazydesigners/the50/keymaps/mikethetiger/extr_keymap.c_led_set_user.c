
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int host_keyboard_leds () ;
 int the50_led_off () ;
 int the50_led_on () ;

void led_set_user(uint8_t usb_led) {

  if (host_keyboard_leds() & (1 << USB_LED_CAPS_LOCK)) {
    the50_led_on();
  } else {
    the50_led_off();
  }
}
