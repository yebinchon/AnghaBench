
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int DDRD ;
 int PORTD ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {


  if (usb_led & (1 << USB_LED_CAPS_LOCK))
  {

    DDRD |= (1<<4);
    PORTD |= (1<<4);
  }
  else
  {

    DDRD &= ~(1<<4);
    PORTD &= ~(1<<4);
  }

  if (usb_led & (1 << USB_LED_NUM_LOCK))
  {

    DDRD |= (1<<5);
    PORTD |= (1<<5);
  }
  else
  {

    DDRD &= ~(1<<5);
    PORTD &= ~(1<<5);
  }

  if (usb_led & (1 << USB_LED_SCROLL_LOCK))
  {

    DDRD |= (1<<6);
    PORTD |= (1<<6);
  }
  else
  {

    DDRD &= ~(1<<6);
    PORTD &= ~(1<<6);
  }

 led_set_user(usb_led);
}
