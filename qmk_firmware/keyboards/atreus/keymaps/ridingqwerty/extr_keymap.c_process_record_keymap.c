
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_4__ {int pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 int KC_QUOT ;
 int KC_RGUI ;
 int MOD_BIT (int ) ;

 int TAPPING_TERM ;
 int _NUMBER ;
 int key_timer ;
 int layer_off (int ) ;
 int layer_on (int ) ;
 int register_mods (int ) ;
 int tap_code (int ) ;
 int timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_mods (int ) ;

bool process_record_keymap(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case 128:
            if (record->event.pressed) {
                key_timer = timer_read();
                layer_on(_NUMBER);
                register_mods(MOD_BIT(KC_RGUI));
            } else {
                unregister_mods(MOD_BIT(KC_RGUI));
                layer_off(_NUMBER);
                if (timer_elapsed(key_timer) < TAPPING_TERM) {
                    tap_code(KC_QUOT);
                }
            }
            return 0; break;
    }
    return 1;
}
