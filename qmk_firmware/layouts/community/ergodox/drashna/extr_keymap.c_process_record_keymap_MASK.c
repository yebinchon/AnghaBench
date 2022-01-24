#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_5__ {int /*<<< orphan*/  pressed; } ;
struct TYPE_6__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;
struct TYPE_7__ {int swapped_numbers; int /*<<< orphan*/  raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  KC_1 130 
#define  KC_2 129 
#define  KC_SWAP_NUM 128 
 int /*<<< orphan*/  _GAMEPAD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int const) ; 
 int /*<<< orphan*/  FUNC3 (int const) ; 
 TYPE_3__ userspace_config ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case KC_1:
            if (FUNC0(_GAMEPAD) && userspace_config.swapped_numbers) {
                if (record->event.pressed) {
                    FUNC2(KC_2);
                } else {
                    FUNC3(KC_2);
                }
                return false;
            }
            break;
        case KC_2:
            if (FUNC0(_GAMEPAD) && userspace_config.swapped_numbers) {
                if (record->event.pressed) {
                    FUNC2(KC_1);
                } else {
                    FUNC3(KC_1);
                }
                return false;
            }
            break;
        case KC_SWAP_NUM:
            if (record->event.pressed) {
                userspace_config.swapped_numbers ^= 1;
                FUNC1(userspace_config.raw);
            }
            break;
    }
    // switch (keycode) {
    //  case KC_P00:
    //    if (!record->event.pressed) {
    //      register_code(KC_KP_0);
    //      unregister_code(KC_KP_0);
    //      register_code(KC_KP_0);
    //      unregister_code(KC_KP_0);
    //    }
    //    return false;
    //    break;
    //}
    return true;
}