
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int USB_LED_CAPS_LOCK ;
 int USB_LED_NUM_LOCK ;
 int USB_LED_SCROLL_LOCK ;
 int host_keyboard_leds () ;
 int led_capslock ;
 int led_numlock ;
 int led_scrolllock ;

void read_host_led_state(void) {
  uint8_t leds = host_keyboard_leds();
  if (leds & (1 << USB_LED_NUM_LOCK)) {
    if (led_numlock == 0){
    led_numlock = 1;}
    } else {
    if (led_numlock == 1){
    led_numlock = 0;}
    }
  if (leds & (1 << USB_LED_CAPS_LOCK)) {
    if (led_capslock == 0){
    led_capslock = 1;}
    } else {
    if (led_capslock == 1){
    led_capslock = 0;}
    }
  if (leds & (1 << USB_LED_SCROLL_LOCK)) {
    if (led_scrolllock == 0){
    led_scrolllock = 1;}
    } else {
    if (led_scrolllock == 1){
    led_scrolllock = 0;}
    }
}
