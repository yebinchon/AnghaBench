#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DOUBLE_TAP 130 
 int /*<<< orphan*/  KC_DQUO ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_QUOT ; 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ quot_dquot_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(qk_tap_dance_state_t *state, void *user_data) {
    quot_dquot_state.state = FUNC0(state);
    switch (quot_dquot_state.state) {
        case SINGLE_TAP:
            FUNC1(KC_QUOT);
            break;

        case SINGLE_HOLD:
            FUNC1(KC_LCTL);
            FUNC1(KC_LALT);
            break;

        case DOUBLE_TAP:
            FUNC2(KC_DQUO);
            break;
    }
}