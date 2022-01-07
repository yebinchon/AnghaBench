
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ MOUSE1 ;
 scalar_t__ MOUSE2 ;
 scalar_t__ PROG1 ;
 scalar_t__ PROG2 ;
 int USB_LED_CAPS_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 scalar_t__ biton32 (int ) ;
 scalar_t__ current_layer_global ;
 int host_keyboard_leds () ;
 int layer_state ;
 int led_set_kb (int) ;

void matrix_scan_user(void) {
    uint8_t layer;
    layer = biton32(layer_state);

    if (current_layer_global != layer) {
        current_layer_global = layer;


        led_set_kb(host_keyboard_leds() & ~(1<<USB_LED_CAPS_LOCK));
        led_set_kb(host_keyboard_leds() & ~(1<<USB_LED_SCROLL_LOCK));

        if (layer == MOUSE1 || layer == MOUSE2) {
          led_set_kb(host_keyboard_leds() | (1<<USB_LED_SCROLL_LOCK));
        } else if (layer == PROG1 || layer == PROG2) {
          led_set_kb(host_keyboard_leds() | (1<<USB_LED_CAPS_LOCK));
        }
    }
}
