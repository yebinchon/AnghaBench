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
 int /*<<< orphan*/  KC_COMM ; 
 int /*<<< orphan*/  KC_DOT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dot_comm_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(qk_tap_dance_state_t *state, void *user_data) {
    dot_comm_state.state = FUNC0(state);
    switch (dot_comm_state.state) {
        case SINGLE_TAP:
            FUNC1(KC_DOT);
            break;

        case SINGLE_HOLD:
            FUNC1(KC_LCTL);
            FUNC1(KC_LSFT);
            break;

        case DOUBLE_TAP:
            FUNC1(KC_COMM);
            break;
    }
}