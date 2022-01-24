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
#define  DOUBLE_SINGLE_TAP 131 
 int /*<<< orphan*/  KC_ESC ; 
#define  NONE_NONE 130 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int /*<<< orphan*/  _FN ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int sstate ; 
 int td_state ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4 (qk_tap_dance_state_t *state, void *user_data) {
  td_state = FUNC0(state);
  switch (td_state) {
    case SINGLE_TAP:
      FUNC2(KC_ESC);
      break;
    case SINGLE_HOLD:
      FUNC1(_FN);
      FUNC3();
      sstate = false;
      break;
    case DOUBLE_SINGLE_TAP:
      break;
    case NONE_NONE:
      break;
  }
}