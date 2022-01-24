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
struct TYPE_2__ {int lower; } ;

/* Variables and functions */
#define  DOUBLE_TAP 130 
#define  HOLD 129 
 int /*<<< orphan*/  KC_ESC ; 
#define  SINGLE_TAP 128 
 int /*<<< orphan*/  _LOWER ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__ td_status ; 

void FUNC4(qk_tap_dance_state_t *state, void *user_data) {
  td_status.lower = FUNC0(state);
  switch(td_status.lower) {
    case SINGLE_TAP:
      FUNC3(false);
      break;
    case DOUBLE_TAP:
      FUNC3(false);
      FUNC2(KC_ESC);
      break;
    case HOLD:
      break;
  }
  FUNC1(_LOWER);
}