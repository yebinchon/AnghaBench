#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int MOD_MASK_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_INSERT ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(qk_tap_dance_state_t *state, void *user_data) {
    bool is_paste = state->count == 2;
    // If either the one-shot shift is set, or if shift is being held, count as shift being held.
    // We'll clear the one-shot shift if it was held
    uint8_t one_shot_mods = FUNC5();
    bool is_shift = false;

    if (FUNC4() & MOD_MASK_SHIFT) {
        is_shift = true;
    } else if (one_shot_mods & MOD_MASK_SHIFT) {
        FUNC6(one_shot_mods & ~MOD_MASK_SHIFT);
        is_shift = true;
    }

    if (is_paste) {
        if (is_shift) {
            FUNC0(FUNC2(FUNC3(X_INSERT)));
        } else {
            FUNC0(FUNC1("v"));
        }
    } else {
        if (is_shift) {
            FUNC0(FUNC1(FUNC3(X_INSERT)));
        } else {
            FUNC0(FUNC1("c"));
        }
    }
}