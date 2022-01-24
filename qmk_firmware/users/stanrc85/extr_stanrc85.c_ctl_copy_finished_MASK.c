#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;

/* Variables and functions */
#define  DOUBLE_TAP 130 
 int /*<<< orphan*/  KC_RCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int td_state ; 

void FUNC5 (qk_tap_dance_state_t *state, void *user_data) {
  td_state = FUNC3(state);
  switch (td_state) {
    case SINGLE_TAP:
      FUNC1(FUNC2("c"));
      break;
    case SINGLE_HOLD:
      FUNC4(FUNC0(KC_RCTL));
      break;
    case DOUBLE_TAP:
      FUNC1(FUNC2("v"));
  }
}