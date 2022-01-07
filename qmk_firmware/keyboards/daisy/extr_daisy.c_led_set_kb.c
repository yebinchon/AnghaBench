
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRC ;
 int PC6 ;
 int PORTC ;
 int USB_LED_CAPS_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {

  if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

        DDRC |= (1<<PC6);
        PORTC &= ~(1<<PC6);
    } else {

        DDRC &= ~(1<<PC6);
        PORTC &= ~(1<<PC6);
  }
 led_set_user(usb_led);
}
