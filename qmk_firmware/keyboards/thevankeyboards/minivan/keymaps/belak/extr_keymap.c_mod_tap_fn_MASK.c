#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; size_t keycode; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t QK_TAP_DANCE ; 
 int /*<<< orphan*/  _L1 ; 
 int /*<<< orphan*/  _L2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/ * tap_dance_keys ; 

void FUNC6(qk_tap_dance_state_t *state, void *user_data) {
    switch (state->count) {
        case 1:
            FUNC3(FUNC0(tap_dance_keys[state->keycode - QK_TAP_DANCE]));
            FUNC5();
            break;
        case 2:
            FUNC2(_L2);
            break;
        case 3:
            FUNC1(_L2);
            FUNC2(_L1);
            break;
        default:
            FUNC4(state);
    }
}