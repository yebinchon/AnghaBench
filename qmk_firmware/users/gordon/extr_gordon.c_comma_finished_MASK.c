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
#define  DOUBLE_HOLD 133 
#define  DOUBLE_TAP 132 
 int /*<<< orphan*/  KC_CALCULATOR ; 
 int /*<<< orphan*/  KC_COMMA ; 
#define  SINGLE_HOLD 131 
#define  SINGLE_TAP 130 
#define  TRIPLE_HOLD 129 
#define  TRIPLE_TAP 128 
 TYPE_1__ comma_state ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4 (qk_tap_dance_state_t *state, void *user_data) {
  comma_state.state = FUNC0(state); //Use the dance that favors being held
  switch (comma_state.state) {
    case SINGLE_TAP: FUNC3(KC_COMMA); break;
    case SINGLE_HOLD: FUNC2(1); break; //turn on symbols layer
    case DOUBLE_TAP: FUNC1(4); break; //toggle numbers layer
    case DOUBLE_HOLD: FUNC2(2); break;
    case TRIPLE_TAP: FUNC3(KC_CALCULATOR); break;
    case TRIPLE_HOLD: FUNC2(3);
  }
}