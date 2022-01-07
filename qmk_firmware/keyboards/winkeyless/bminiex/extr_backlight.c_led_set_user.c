
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CAPSLOCK_PORT ;
 int DDRD ;
 int NUMLOCK_PORT ;
 int PORTD ;
 int SCROLLLOCK_PORT ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;

__attribute__ ((weak))
void led_set_user(uint8_t usb_led) {
    if (usb_led & (1 << USB_LED_NUM_LOCK)) {

      DDRD |= NUMLOCK_PORT;
      PORTD |= NUMLOCK_PORT;
    } else {

      DDRD &= ~NUMLOCK_PORT;
      PORTD &= ~NUMLOCK_PORT;
    }

    if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
      DDRD |= CAPSLOCK_PORT;
      PORTD |= CAPSLOCK_PORT;
    } else {
      DDRD &= ~CAPSLOCK_PORT;
      PORTD &= ~CAPSLOCK_PORT;
    }

    if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
      DDRD |= SCROLLLOCK_PORT;
      PORTD |= SCROLLLOCK_PORT;
    } else {
      DDRD &= ~SCROLLLOCK_PORT;
      PORTD &= ~SCROLLLOCK_PORT;
    }
}
