
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int dk60_caps_led_off () ;
 int dk60_caps_led_on () ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {
 if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

  dk60_caps_led_on();
 } else {

  dk60_caps_led_off();
 }

 led_set_user(usb_led);
}
