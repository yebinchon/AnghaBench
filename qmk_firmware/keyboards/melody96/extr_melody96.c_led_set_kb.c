
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int DDRC ;
 int PORTB ;
 int PORTC ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {
 if (usb_led & (1 << USB_LED_NUM_LOCK)) {
  DDRC |= (1 << 6); PORTC &= ~(1 << 6);
 } else {
  DDRC &= ~(1 << 6); PORTC &= ~(1 << 6);
 }

 if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
  DDRC |= (1 << 7); PORTC &= ~(1 << 7);
 } else {
  DDRC &= ~(1 << 7); PORTC &= ~(1 << 7);
 }

 if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
  DDRB |= (1 << 5); PORTB &= ~(1 << 5);
 } else {
  DDRB &= ~(1 << 5); PORTB &= ~(1 << 5);
 }

    led_set_user(usb_led);
}
