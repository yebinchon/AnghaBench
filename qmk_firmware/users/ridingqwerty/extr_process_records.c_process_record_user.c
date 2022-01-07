
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_QUOT ;
 int KC_RGUI ;
 int MOD_BIT (int ) ;

 int TAPPING_TERM ;
 int _NUMBER ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 scalar_t__ process_record_keymap (int,TYPE_2__*) ;
 scalar_t__ process_record_secrets (int,TYPE_2__*) ;
 int register_code (int ) ;
 int register_mods (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_code (int ) ;
 int unregister_mods (int ) ;
 int user_key_timer ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
  switch(keycode) {
    case 128:
      if (record->event.pressed) {
        user_key_timer = timer_read();
        layer_on(_NUMBER);
        register_mods(MOD_BIT(KC_RGUI));
      } else {
        unregister_mods(MOD_BIT(KC_RGUI));
        layer_off(_NUMBER);
 if (timer_elapsed(user_key_timer) < TAPPING_TERM) {
          register_code(KC_QUOT);
   unregister_code(KC_QUOT);
 }
      }
      return 0; break;
  }
  return process_record_keymap(keycode, record) &&
    process_record_secrets(keycode, record);
}
