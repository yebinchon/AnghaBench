
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRC ;
 int DDRD ;
 int PORTC ;
 int PORTD ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {


    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        DDRD |= (1<<0);
        PORTD &= ~(1<<0);
    } else {

        DDRD &= ~(1<<0);
        PORTD &= ~(1<<0);
    }
    if (usb_led & (1<<USB_LED_NUM_LOCK)) {

        DDRD |= (1<<1);
        PORTD &= ~(1<<1);
    } else {

        DDRD &= ~(1<<1);
        PORTD &= ~(1<<1);
    }
    if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {

        DDRC |= (1<<6);
        PORTC &= ~(1<<6);
    } else {

        DDRC &= ~(1<<6);
        PORTC &= ~(1<<6);
    }

    led_set_user(usb_led);
}
