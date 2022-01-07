
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CONFIG_LED_IO ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_CAPS_LOCK_OFF ;
 int USB_LED_CAPS_LOCK_ON ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_NUM_LOCK_OFF ;
 int USB_LED_NUM_LOCK_ON ;
 int USB_LED_SCROLL_LOCK ;
 int USB_LED_SCROLL_LOCK_OFF ;
 int USB_LED_SCROLL_LOCK_ON ;
 int led_set_user (int) ;
 int print_dec (int) ;

void led_set_kb(uint8_t usb_led) {

    CONFIG_LED_IO;
    CONFIG_LED_IO;
    print_dec(usb_led);
    if (usb_led & (1<<USB_LED_CAPS_LOCK))
        USB_LED_CAPS_LOCK_ON;
    else
        USB_LED_CAPS_LOCK_OFF;

    if (usb_led & (1<<USB_LED_NUM_LOCK))
        USB_LED_NUM_LOCK_ON;
    else
        USB_LED_NUM_LOCK_OFF;
    if (usb_led & (1<<USB_LED_SCROLL_LOCK))
        USB_LED_SCROLL_LOCK_ON;
    else
        USB_LED_SCROLL_LOCK_OFF;
 led_set_user(usb_led);
}
