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
 int /*<<< orphan*/  KC_C ; 
#define  KC_CCCV 128 
 int /*<<< orphan*/  KC_V ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAPPING_TERM ; 
 int /*<<< orphan*/  copy_paste_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

bool FUNC4(uint16_t keycode, keyrecord_t *record) {
    switch (keycode) {
        case KC_CCCV:  // One key copy/paste
            if (record->event.pressed) {
                copy_paste_timer = FUNC3();
            } else {
                if (FUNC2(copy_paste_timer) > TAPPING_TERM) {  // Hold, copy
                    FUNC1(FUNC0(KC_C));
                } else { // Tap, paste
                    FUNC1(FUNC0(KC_V));
                }
            }
            break;
    }
    return true;
}