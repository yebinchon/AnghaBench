
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NUMLOCK ;
 int USB_LED_NUM_LOCK ;
 int host_keyboard_leds () ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void matrix_init_user(void) {
  if (!(host_keyboard_leds() & (1<<USB_LED_NUM_LOCK))) {
    register_code(KC_NUMLOCK);
    unregister_code(KC_NUMLOCK);
  }
}
