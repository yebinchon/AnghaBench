
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRE ;
 int PE6 ;
 int PORTE ;
 int USB_LED_CAPS_LOCK ;

void led_set_user(uint8_t usb_led) {
    if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        DDRE |= (1<<PE6);
        PORTE &= ~(1<<PE6);
    }
    else {

        DDRE &= ~(1<<PE6);
        PORTE &= ~(1<<PE6);
    }
}
