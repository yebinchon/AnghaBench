
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int adb_host_kbd_led (int ) ;

void led_set(uint8_t usb_led)
{
    adb_host_kbd_led(~usb_led);
}
