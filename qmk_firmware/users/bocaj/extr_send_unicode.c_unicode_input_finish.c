
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KC_LALT ;
 int KC_SPC ;



 int get_unicode_input_mode () ;
 int register_code (int ) ;
 int saved_mods ;
 int set_mods (int ) ;
 int unregister_code (int ) ;

void unicode_input_finish (void) {
  switch(get_unicode_input_mode()) {
    case 129:
    case 128:
      unregister_code(KC_LALT);
      break;
    case 130:
      register_code(KC_SPC);
      unregister_code(KC_SPC);
      break;
  }

  set_mods(saved_mods);
}
