
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int PORTB ;
 int USB_LED_CAPS_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {


  if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
  DDRB |= (1 << 2);
  PORTB &= ~(1 << 2);
 } else {
  DDRB &= ~(1 << 2);
  PORTB &= ~(1 << 2);
 }

 led_set_user(usb_led);
}
