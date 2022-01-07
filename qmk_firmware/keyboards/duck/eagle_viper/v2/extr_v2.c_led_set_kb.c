
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int host_keyboard_leds () ;
 int indicator_leds_set (int*) ;
 int layer_state ;

void led_set_kb(uint8_t usb_led) {
    bool status[8] = {
    host_keyboard_leds() & (1<<USB_LED_SCROLL_LOCK),
    host_keyboard_leds() & (1<<USB_LED_CAPS_LOCK),
    host_keyboard_leds() & (1<<USB_LED_NUM_LOCK),

    layer_state & (1<<2),
    layer_state & (1<<1),
    layer_state & (1<<0) ? 0: 1,

    layer_state & (1<<5),
    layer_state & (1<<4)
  };

  indicator_leds_set(status);
}
