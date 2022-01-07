
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ IS_LED_ON (int ,int ) ;
 int USB_LED_CAPS_LOCK ;
 int gh60_caps_led_off () ;
 int gh60_caps_led_on () ;
 int led_set_user (int ) ;

void led_set_kb(uint8_t usb_led) {


    if (IS_LED_ON(usb_led, USB_LED_CAPS_LOCK)) {
        gh60_caps_led_on();
    } else {
        gh60_caps_led_off();
    }

    led_set_user(usb_led);
}
