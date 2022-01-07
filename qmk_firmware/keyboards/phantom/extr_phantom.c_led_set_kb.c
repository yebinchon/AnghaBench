
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTB ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {
    if (usb_led & (1<<USB_LED_CAPS_LOCK))
    {
        PORTB |= (1<<6);
    }
    else
    {
        PORTB &= ~(1<<6);
    }

    if (usb_led & (1<<USB_LED_SCROLL_LOCK))
    {
        PORTB |= (1<<7);
    }
    else
    {
        PORTB &= ~(1<<7);
    }

    led_set_user(usb_led);
}
