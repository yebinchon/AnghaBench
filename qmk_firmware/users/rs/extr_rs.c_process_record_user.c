
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_0 ;
 int KC_9 ;
 int KC_COMM ;
 int KC_DOT ;
 int KC_LSFT ;
 int KC_RSFT ;

 int MOD_BIT (int ) ;




 int SEND_STRING (char*) ;
 int eeconfig_update_rgblight_default () ;
 int get_mods () ;
 int keylog_set_keymap (int,TYPE_2__*) ;
 int process_record_keymap (int,TYPE_2__*) ;
 int register_mods (int) ;
 int rgb_mod_changed_keymap () ;
 int rgblight_enable () ;
 int rgblight_step () ;
 int tap_code (int ) ;
 int unregister_mods (int) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  if (record->event.pressed) {
    keylog_set_keymap(keycode, record);
  }

  switch (keycode) {
  case 131:
    if (record->event.pressed) {
      SEND_STRING("!=");
    }
    return 0;
  case 132:
    if (record->event.pressed) {
      if (get_mods() & (MOD_BIT(KC_LSFT) | MOD_BIT(KC_RSFT))) {

        tap_code(KC_COMM);
      } else {

        register_mods(MOD_BIT(KC_LSFT));
        tap_code(KC_9);
        unregister_mods(MOD_BIT(KC_LSFT));
      }
    }
    return 0;
  case 128:
    if (record->event.pressed) {
      if (get_mods() & (MOD_BIT(KC_LSFT) | MOD_BIT(KC_RSFT))) {

        tap_code(KC_DOT);
      } else {

        register_mods(MOD_BIT(KC_LSFT));
        tap_code(KC_0);
        unregister_mods(MOD_BIT(KC_LSFT));
      }
    }
    return 0;
  }
  return process_record_keymap(keycode, record);
}
