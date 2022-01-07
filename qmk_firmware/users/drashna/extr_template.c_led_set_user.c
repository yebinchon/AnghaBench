
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int led_set_keymap (int ) ;

void led_set_user(uint8_t usb_led) {
   led_set_keymap(usb_led);
}
