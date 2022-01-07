
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

void led_set_user(uint8_t usb_led)
{
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        DDRD |= (1<<6);
        PORTD |= (1<<6);
    } else {

        DDRD &= ~(1<<6);
        PORTD &= ~(1<<6);
    }
    if (usb_led & (1<<USB_LED_NUM_LOCK)) {

        DDRC |= (1<<7);
        PORTC |= ~(1<<7);
    } else {

        DDRC &= ~(1<<7);
        PORTC &= ~(1<<7);
    }
}
