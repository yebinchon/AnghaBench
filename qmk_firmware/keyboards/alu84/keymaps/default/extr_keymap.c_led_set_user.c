
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int PORTB ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_COMPOSE ;
 int USB_LED_KANA ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;

void led_set_user(uint8_t usb_led) {

 if (usb_led & (1 << USB_LED_NUM_LOCK)) {

 } else {

 }

 if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
  DDRB |= (1 << 2); PORTB &= ~(1 << 2);
 } else {
  DDRB &= ~(1 << 2); PORTB &= ~(1 << 2);
 }

 if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {

 } else {

 }

 if (usb_led & (1 << USB_LED_COMPOSE)) {

 } else {

 }

 if (usb_led & (1 << USB_LED_KANA)) {

 } else {

 }

}
