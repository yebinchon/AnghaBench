
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int kc60se_caps_led_off () ;
 int kc60se_caps_led_on () ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {
    (usb_led & (1<<USB_LED_CAPS_LOCK))? kc60se_caps_led_on(): kc60se_caps_led_off();
 led_set_user(usb_led);
}
