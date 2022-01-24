#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
#define  COLEMAK 134 
#define  GUI_UNDS 133 
 int /*<<< orphan*/  KC_0 ; 
 int /*<<< orphan*/  KC_9 ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_MINS ; 
 int /*<<< orphan*/  KC_RSFT ; 
#define  LSFT_LPRN 132 
#define  QWERTY 131 
#define  QWOC 130 
#define  RSFT_RPRN 129 
#define  SDTOGG 128 
 int /*<<< orphan*/  _COLEMAK ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _QWOC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case QWERTY:
            if (record->event.pressed) {
                FUNC1(_QWERTY);

                FUNC2(_QWERTY);
            }
            return false;

        case COLEMAK:
            if (record->event.pressed) {
                FUNC1(_COLEMAK);

                FUNC2(_COLEMAK);
            }
            return false;

        case QWOC:
            if (record->event.pressed) {
                FUNC1(_QWOC);

                FUNC2(_QWOC);
            }
            return false;

        case SDTOGG:
            if (record->event.pressed) {
                FUNC3();
            }
            return false;

        // Macros

        // 1. Hold for LGUI, tap for Underscore
        case GUI_UNDS:
            FUNC0(record, KC_LGUI, KC_LSFT, KC_MINS);
            return false;

        // 2. Hold for LSHIFT, tap for Parens open
        case LSFT_LPRN:
            FUNC0(record, KC_LSFT, KC_LSFT, KC_9);
            return false;

        // 3. Hold for RSHIFT, tap for Parens close
        case RSFT_RPRN:
            FUNC0(record, KC_RSFT, KC_RSFT, KC_0);
            return false;

        default:
            return true;
    }
    return true;
}