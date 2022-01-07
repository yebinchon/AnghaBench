
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int CAPSLOCK_PORT ;
 int DDRD ;
 int PORTD ;
 int USB_LED_CAPS_LOCK ;

__attribute__ ((weak))
void led_set_user(uint8_t usb_led) {
    if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
      DDRD |= CAPSLOCK_PORT;
      PORTD |= CAPSLOCK_PORT;
    } else {
      DDRD &= ~CAPSLOCK_PORT;
      PORTD &= ~CAPSLOCK_PORT;
    }
}
