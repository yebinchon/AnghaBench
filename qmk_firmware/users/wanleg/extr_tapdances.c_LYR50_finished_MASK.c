#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;
struct TYPE_4__ {int /*<<< orphan*/  state; } ;
struct TYPE_3__ {int state; } ;

/* Variables and functions */
#define  DOUBLE_SINGLE_TAP 130 
#define  DOUBLE_TAP 129 
 int /*<<< orphan*/  GK50 ; 
 int /*<<< orphan*/  KC_PSLS ; 
 TYPE_2__ LYR50tap_state ; 
 TYPE_1__ LYR75tap_state ; 
#define  SINGLE_TAP 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 (qk_tap_dance_state_t *state, void *user_data) {
  LYR50tap_state.state = FUNC0(state);
  switch (LYR75tap_state.state) {
	case SINGLE_TAP: FUNC1(KC_PSLS); break;
	case DOUBLE_TAP: FUNC2(GK50); break;
    case DOUBLE_SINGLE_TAP: FUNC1(KC_PSLS); FUNC3(KC_PSLS); FUNC1(KC_PSLS);
  }
}