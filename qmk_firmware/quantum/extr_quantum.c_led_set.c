
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef int led_t ;
struct TYPE_2__ {scalar_t__ level; scalar_t__ enable; } ;


 scalar_t__ BACKLIGHT_LEVELS ;
 scalar_t__ IS_LED_OFF (scalar_t__,int ) ;
 scalar_t__ IS_LED_ON (scalar_t__,int ) ;
 int USB_LED_CAPS_LOCK ;
 TYPE_1__ backlight_config ;
 int backlight_set (scalar_t__) ;
 int led_set_kb (scalar_t__) ;
 int led_update_kb (int ) ;

__attribute__((weak)) void led_set(uint8_t usb_led) {
    led_set_kb(usb_led);
    led_update_kb((led_t)usb_led);
}
