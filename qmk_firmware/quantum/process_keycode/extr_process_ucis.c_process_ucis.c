
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int in_progress; size_t count; scalar_t__* codes; } ;
struct TYPE_8__ {scalar_t__ code; scalar_t__ symbol; } ;


 scalar_t__ KC_BSPC ;
 scalar_t__ KC_ENT ;
 scalar_t__ KC_ESC ;
 scalar_t__ KC_SPC ;
 size_t UCIS_MAX_SYMBOL_LENGTH ;
 int UNICODE_TYPE_DELAY ;
 scalar_t__ is_uni_seq (scalar_t__) ;
 int qk_ucis_cancel () ;
 TYPE_4__ qk_ucis_state ;
 int qk_ucis_success (size_t) ;
 int qk_ucis_symbol_fallback () ;
 int register_code (scalar_t__) ;
 int register_ucis (scalar_t__) ;
 TYPE_3__* ucis_symbol_table ;
 int unicode_input_finish () ;
 int unicode_input_start () ;
 int unregister_code (scalar_t__) ;
 int wait_ms (int ) ;

bool process_ucis(uint16_t keycode, keyrecord_t *record) {
    uint8_t i;

    if (!qk_ucis_state.in_progress) return 1;

    if (qk_ucis_state.count >= UCIS_MAX_SYMBOL_LENGTH && !(keycode == KC_BSPC || keycode == KC_ESC || keycode == KC_SPC || keycode == KC_ENT)) {
        return 0;
    }

    if (!record->event.pressed) return 1;

    qk_ucis_state.codes[qk_ucis_state.count] = keycode;
    qk_ucis_state.count++;

    if (keycode == KC_BSPC) {
        if (qk_ucis_state.count >= 2) {
            qk_ucis_state.count -= 2;
            return 1;
        } else {
            qk_ucis_state.count--;
            return 0;
        }
    }

    if (keycode == KC_ENT || keycode == KC_SPC || keycode == KC_ESC) {
        bool symbol_found = 0;

        for (i = qk_ucis_state.count; i > 0; i--) {
            register_code(KC_BSPC);
            unregister_code(KC_BSPC);
            wait_ms(UNICODE_TYPE_DELAY);
        }

        if (keycode == KC_ESC) {
            qk_ucis_state.in_progress = 0;
            qk_ucis_cancel();
            return 0;
        }

        unicode_input_start();
        for (i = 0; ucis_symbol_table[i].symbol; i++) {
            if (is_uni_seq(ucis_symbol_table[i].symbol)) {
                symbol_found = 1;
                register_ucis(ucis_symbol_table[i].code + 2);
                break;
            }
        }
        if (!symbol_found) {
            qk_ucis_symbol_fallback();
        }
        unicode_input_finish();

        if (symbol_found) {
            qk_ucis_success(i);
        }

        qk_ucis_state.in_progress = 0;
        return 0;
    }
    return 1;
}
