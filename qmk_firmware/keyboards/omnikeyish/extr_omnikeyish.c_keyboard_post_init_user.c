
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_NUMLOCK ;
 int dynamic_macro_load_eeprom_all () ;
 int register_code (int ) ;
 int unregister_code (int ) ;

void keyboard_post_init_user(void) {
  register_code(KC_NUMLOCK);
  unregister_code(KC_NUMLOCK);
}
