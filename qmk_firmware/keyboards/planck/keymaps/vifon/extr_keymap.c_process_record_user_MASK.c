#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint16_t ;
struct TYPE_6__ {int /*<<< orphan*/  key; scalar_t__ pressed; } ;
struct TYPE_7__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
typedef  unsigned long int32_t ;

/* Variables and functions */
 int DYN_REC_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KC_LSFT ; 
 scalar_t__ KC_TRNS ; 
#define  KM_HOLD 136 
#define  KM_LW 135 
#define  KM_NUM 134 
#define  KM_PP_GAME 133 
#define  KM_PP_HOLD 132 
#define  KM_RS 131 
#define  KM_RST 130 
#define  KM_SHLK 129 
#define  KM_SLP 128 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  _DL ; 
 int /*<<< orphan*/  _DYN ; 
 int /*<<< orphan*/  _LW ; 
 int /*<<< orphan*/  _NM ; 
 unsigned long _PP ; 
 unsigned long _QW ; 
 int /*<<< orphan*/  _RS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned long) ; 
 unsigned long default_layer_state ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 unsigned long layer_state ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int FUNC14 (int) ; 
 int FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool FUNC17(uint16_t keycode, keyrecord_t *record) {
    static uint16_t key_timer;
    static uint8_t ignore_up_events = 0;

    uint16_t macro_kc = (keycode == FUNC1(_DYN) ? DYN_REC_STOP : keycode);
    if (!FUNC12(macro_kc, record)) {
        return false;
    }

    if (ignore_up_events > 0 && keycode != FUNC1(_DYN) && keycode != KM_HOLD && !record->event.pressed) {
        ignore_up_events -= 1;
        return false;
    }

    switch (keycode) {
    case KM_LW:
        if (record->event.pressed) {
            FUNC10(_LW);
        } else {
            FUNC9(_LW);
        }
        FUNC16(_LW, _RS, _DL);
        return false;
        break;
    case KM_RS:
        if (record->event.pressed) {
            FUNC10(_RS);
        } else {
            FUNC9(_RS);
        }
        FUNC16(_LW, _RS, _DL);
        return false;
        break;
    case KM_SHLK:
        FUNC13(KC_LSFT);
        break;
    case KM_HOLD:
        if (!record->event.pressed) {
            ignore_up_events += 1;
        }
        break;
    case KM_RST:
    {
        /* Make slash available on the PP layer. */
        if ((1UL << _PP) & default_layer_state) {
            int32_t old_default_layer_state = default_layer_state;
            int32_t old_layer_state = layer_state;

            layer_state = 0;
            default_layer_state = (1UL << _QW);

            FUNC11(record);

            layer_state = old_layer_state;
            default_layer_state = old_default_layer_state;

            return false;
        }
    }

        if (record->event.pressed) {
            key_timer = FUNC15();
        } else {
            if (FUNC14(key_timer) >= 500) {
                FUNC5();
                FUNC3();
                FUNC2(250);
                FUNC3();
                FUNC4();
            }
        }
        break;
    case KM_PP_GAME:
        if (!record->event.pressed) {
            FUNC7();
        }
        break;
    case KM_PP_HOLD:
        if (record->event.pressed) {
            key_timer = FUNC15();
        } else {
            if (FUNC14(key_timer) >= 250) {
                FUNC7();
            } else {
                FUNC6(1UL << _PP);
            }
        }
        break;
    case KM_NUM:
        FUNC10(_NM);
        break;
    case KM_SLP:
        if (record->event.pressed) {
            FUNC2(250);
        }
        break;
    }


    if (record->event.pressed
        && FUNC0(_NM)
        && FUNC8(_NM, record->event.key) == KC_TRNS) {

        FUNC9(_NM);
    }

    return true;
}