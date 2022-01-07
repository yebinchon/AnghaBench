
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int backlight_set_indicator_state (int ) ;
 int led_set_user (int ) ;

void led_set_kb(uint8_t usb_led)
{



 led_set_user(usb_led);
}
