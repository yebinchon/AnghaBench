#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_9__ {int in_progress; size_t count; scalar_t__* codes; } ;
struct TYPE_8__ {scalar_t__ code; scalar_t__ symbol; } ;

/* Variables and functions */
 scalar_t__ KC_BSPC ; 
 scalar_t__ KC_ENT ; 
 scalar_t__ KC_ESC ; 
 scalar_t__ KC_SPC ; 
 size_t UCIS_MAX_SYMBOL_LENGTH ; 
 int /*<<< orphan*/  UNICODE_TYPE_DELAY ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_4__ qk_ucis_state ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 TYPE_3__* ucis_symbol_table ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

bool FUNC10(uint16_t keycode, keyrecord_t *record) {
    uint8_t i;

    if (!qk_ucis_state.in_progress) return true;

    if (qk_ucis_state.count >= UCIS_MAX_SYMBOL_LENGTH && !(keycode == KC_BSPC || keycode == KC_ESC || keycode == KC_SPC || keycode == KC_ENT)) {
        return false;
    }

    if (!record->event.pressed) return true;

    qk_ucis_state.codes[qk_ucis_state.count] = keycode;
    qk_ucis_state.count++;

    if (keycode == KC_BSPC) {
        if (qk_ucis_state.count >= 2) {
            qk_ucis_state.count -= 2;
            return true;
        } else {
            qk_ucis_state.count--;
            return false;
        }
    }

    if (keycode == KC_ENT || keycode == KC_SPC || keycode == KC_ESC) {
        bool symbol_found = false;

        for (i = qk_ucis_state.count; i > 0; i--) {
            FUNC4(KC_BSPC);
            FUNC8(KC_BSPC);
            FUNC9(UNICODE_TYPE_DELAY);
        }

        if (keycode == KC_ESC) {
            qk_ucis_state.in_progress = false;
            FUNC1();
            return false;
        }

        FUNC7();
        for (i = 0; ucis_symbol_table[i].symbol; i++) {
            if (FUNC0(ucis_symbol_table[i].symbol)) {
                symbol_found = true;
                FUNC5(ucis_symbol_table[i].code + 2);
                break;
            }
        }
        if (!symbol_found) {
            FUNC3();
        }
        FUNC6();

        if (symbol_found) {
            FUNC2(i);
        }

        qk_ucis_state.in_progress = false;
        return false;
    }
    return true;
}