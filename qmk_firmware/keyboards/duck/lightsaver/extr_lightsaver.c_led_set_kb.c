
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int indicator_leds_set (int*) ;
 int layer_state ;
 int led_set_user (int) ;

void led_set_kb(uint8_t usb_led) {
  bool leds[8] = {
    usb_led & (1<<USB_LED_CAPS_LOCK),
    usb_led & (1<<USB_LED_SCROLL_LOCK),
    usb_led & (1<<USB_LED_NUM_LOCK),
    layer_state & (1<<1),
    layer_state & (1<<2),
    layer_state & (1<<3),
    layer_state & (1<<4),
    layer_state & (1<<5)
  };
  indicator_leds_set(leds);

  led_set_user(usb_led);
}
