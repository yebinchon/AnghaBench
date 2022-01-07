
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRF ;
 int PORTF ;
 int USB_LED_CAPS_LOCK ;

void led_set_kb(uint8_t usb_led) {
    DDRF |= (1<<0);
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        PORTF |= (1<<0);
    } else {

        PORTF &= ~(1<<0);
    }
}
