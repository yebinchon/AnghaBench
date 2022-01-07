
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {int pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;


 int KC_END ;
 int KC_HOME ;
 int KC_INS ;
 int KC_LSFT ;



 int KC_PGDN ;
 int KC_PGUP ;

 int KC_RSFT ;

 int MOD_BIT (int ) ;
 int ONESHOT_OTHER_KEY_PRESSED ;
 int ONESHOT_START ;

 int clear_oneshot_layer_state (int ) ;
 int is_oneshot_layer_active () ;
 TYPE_4__* keyboard_report ;
 int layer_state ;
 int numlock_on ;
 int register_code (int ) ;
 int unregister_code (int ) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {

  switch (keycode) {
    case 129:
    case 132:

      if (record->event.pressed && is_oneshot_layer_active())
      clear_oneshot_layer_state(ONESHOT_OTHER_KEY_PRESSED);
      return 1;
    case 128:

      if (record->event.pressed && is_oneshot_layer_active()) {
        clear_oneshot_layer_state(ONESHOT_OTHER_KEY_PRESSED);
        return 0;
      }
      return 1;
    case 130:
      if (!numlock_on) {
        if (is_oneshot_layer_active() || layer_state & 0x2) {
          if (record->event.pressed)
            register_code(KC_HOME);
          else
            unregister_code(KC_HOME);
          clear_oneshot_layer_state(ONESHOT_START);
        }
        else {
          if (record->event.pressed)
            register_code(KC_PGUP);
          else
            unregister_code(KC_PGUP);
        }
        return 0;
      }
      return 1;
    case 131:
      if (!numlock_on) {
        if (is_oneshot_layer_active() || layer_state & 0x2) {
          if (record->event.pressed)
            register_code(KC_END);
          else
            unregister_code(KC_END);
          clear_oneshot_layer_state(ONESHOT_START);
        }
        else {
          if (record->event.pressed)
            register_code(KC_PGDN);
          else
            unregister_code(KC_PGDN);
        }
        return 0;
      }
      return 1;
    case 133:

      if ((keyboard_report->mods & MOD_BIT (KC_LSFT)) || (keyboard_report->mods & MOD_BIT (KC_RSFT))) {
        if (record->event.pressed) {
          register_code(KC_INS);
          unregister_code(KC_INS);
        }
        return 0;
      }
      else
        return 1;
    default:
      return 1;
  }
  return 1;
}
