
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {int key; scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_RALT ;
 scalar_t__ KC_TRNS ;
 int KM_HAXHAX ;
 int MOD_BIT (int ) ;
 int get_mods () ;
 scalar_t__ keymap_key_to_keycode (int ,int ) ;
 int register_code (scalar_t__) ;
 int unregister_code (scalar_t__) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
 uint8_t modifiers = get_mods();
 if (modifiers & MOD_BIT(KC_RALT) && record->event.pressed) {
  uint16_t kc = keymap_key_to_keycode(KM_HAXHAX, record->event.key);
  if (kc != KC_TRNS) {
   register_code(kc);
   unregister_code(kc);
   return 0;
  }
 }
 return 1;
}
