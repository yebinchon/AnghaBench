#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_4__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_QUOT ; 
 int /*<<< orphan*/  KC_RGUI ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  RG_QUOT 128 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  _NUMBER ; 
 int /*<<< orphan*/  key_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

bool FUNC8(uint16_t keycode, keyrecord_t *record) {
    switch(keycode) {
        case RG_QUOT:   
            if (record->event.pressed) {
                key_timer = FUNC6();
                FUNC2(_NUMBER);
                FUNC3(FUNC0(KC_RGUI));
            } else {
                FUNC7(FUNC0(KC_RGUI));
                FUNC1(_NUMBER);
                if (FUNC5(key_timer) < TAPPING_TERM) {
                    FUNC4(KC_QUOT);
                }
            }
            return false; break;
    }
    return true;
}