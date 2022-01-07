
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int host_keyboard_leds () ;
 int layer_state ;
 int layer_state_set_user (int ) ;
 int led_set_user (int ) ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enable_noeeprom () ;
 int rgbon ;

void myrgb_toggle(void) {
  if (rgbon) {
    rgblight_disable_noeeprom();
    rgbon = 0;
  } else {
    rgblight_enable_noeeprom();
    layer_state_set_user(layer_state);
    led_set_user(host_keyboard_leds());
    rgbon = 1;
  }
}
