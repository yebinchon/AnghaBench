
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRB ;
 int PORTB ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;

void led_set_user(uint8_t usb_led) {
  DDRB |= (1 << 4) | (1 << 5) | (1 << 6);

  if (usb_led & (1 << USB_LED_NUM_LOCK)) {
    PORTB |= (1 << 4);
  } else {
    PORTB &= ~(1 << 4);
  }

  if (usb_led & (1 << USB_LED_CAPS_LOCK)) {
    PORTB |= (1 << 5);
  } else {
    PORTB &= ~(1 << 5);
  }

  if (usb_led & (1 << USB_LED_SCROLL_LOCK)) {
    PORTB |= (1 << 6);
  } else {
    PORTB &= ~(1 << 6);
  }
}
