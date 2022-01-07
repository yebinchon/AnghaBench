
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int led_set_user (int) ;
 int set_rgb (int,int,int,int) ;

void led_set_kb(uint8_t usb_led)
{

    if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
        set_rgb(31, 0x00, 0x00, 0x7F);
    }else{
        set_rgb(31, 0x00, 0x00, 0x00);
    }
    led_set_user(usb_led);
}
