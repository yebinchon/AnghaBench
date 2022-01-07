
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ pressed; int key; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int mods; } ;


 scalar_t__ IS_COMMAND () ;
 scalar_t__ IS_LSFT (int) ;
 int KC_LSFT ;
 int KC_RSFT ;
 int MOD_BIT (int ) ;
 int QK_LSFT ;
 int add_mods (int) ;
 int add_shift_bit (int) ;
 int add_weak_mods (int) ;
 int convert_keycode (int const**,int,int) ;
 int del_mods (int) ;
 int del_shift_bit (int) ;
 int del_weak_mods (int) ;
 int dprintf (char*,int,int) ;
 scalar_t__ get_shift_bit (int) ;
 TYPE_3__* keyboard_report ;
 int keymap_key_to_keycode (int,int ) ;
 int register_code (int) ;
 int send_keyboard_report () ;
 int unregister_code (int) ;

void action_pseudo_lut(keyrecord_t *record, uint8_t base_keymap_id, const uint16_t (*keymap)[2]) {
    uint8_t prev_shift;
    uint16_t keycode;
    uint16_t pseudo_keycode;


    keycode = keymap_key_to_keycode(base_keymap_id, record->event.key);

    prev_shift = keyboard_report->mods & (MOD_BIT(KC_LSFT) | MOD_BIT(KC_RSFT));

    if (record->event.pressed) {

        if (IS_COMMAND()) {
            if (prev_shift) {
                add_shift_bit(keycode);
            }
            register_code(keycode);
            return;
        }

        if (prev_shift) {
            pseudo_keycode = convert_keycode(keymap, keycode, 1);
            dprintf("pressed: %02X, converted: %04X\n", keycode, pseudo_keycode);
            add_shift_bit(keycode);

            if (IS_LSFT(pseudo_keycode)) {
                register_code(QK_LSFT ^ pseudo_keycode);
            } else {

                del_mods(prev_shift);
                send_keyboard_report();
                register_code(pseudo_keycode);
                add_mods(prev_shift);
                send_keyboard_report();
            }
        } else {
            pseudo_keycode = convert_keycode(keymap, keycode, 0);
            dprintf("pressed: %02X, converted: %04X\n", keycode, pseudo_keycode);

            if (IS_LSFT(pseudo_keycode)) {
                add_weak_mods(MOD_BIT(KC_LSFT));
                send_keyboard_report();
                register_code(QK_LSFT ^ pseudo_keycode);

                unregister_code(QK_LSFT ^ pseudo_keycode);
                del_weak_mods(MOD_BIT(KC_LSFT));
                send_keyboard_report();
            } else {
                register_code(pseudo_keycode);
            }
        }
    } else {
        if (get_shift_bit(keycode)) {
            del_shift_bit(keycode);
            pseudo_keycode = convert_keycode(keymap, keycode, 1);
        } else {
            pseudo_keycode = convert_keycode(keymap, keycode, 0);
        }
        dprintf("released: %02X, converted: %04X\n", keycode, pseudo_keycode);

        if (IS_LSFT(pseudo_keycode)) {
            unregister_code(QK_LSFT ^ pseudo_keycode);
        } else {
            unregister_code(pseudo_keycode);
        }
    }
}
