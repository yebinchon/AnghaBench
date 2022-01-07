
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int PORTD ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;

void led_set_kb(uint8_t usb_led) {

 if (usb_led & (1<<USB_LED_NUM_LOCK)) {

  PORTD |= (1<<2);
    } else {

     PORTD &= ~(1<<2);
    }
 if (usb_led & (1<<USB_LED_CAPS_LOCK)) {

  PORTD |= (1<<3);
    } else {

  PORTD &= ~(1<<3);
    }
 if (usb_led & (1<<USB_LED_SCROLL_LOCK)) {

     PORTD |= (1<<4);
    } else {

  PORTD &= ~(1<<4);
    }
}
