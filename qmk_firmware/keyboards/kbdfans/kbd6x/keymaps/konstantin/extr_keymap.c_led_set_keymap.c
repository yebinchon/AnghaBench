
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int check_light_led (int ) ;
 int skip_led ;

void led_set_keymap(uint8_t usb_led) {
    if (skip_led) {
        skip_led = 0;
        return;
    }
    check_light_led(usb_led);
}
