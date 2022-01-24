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
struct TYPE_2__ {int quote; } ;

/* Variables and functions */
#define  DOUBLE_HOLD 130 
 int /*<<< orphan*/  KC_QUOT ; 
#define  SINGLE_HOLD 129 
#define  SINGLE_TAP 128 
 int /*<<< orphan*/  _NAV ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tap_state ; 

void FUNC3(qk_tap_dance_state_t *state, void *user_data) {
  tap_state.quote = FUNC0(state);
  switch (tap_state.quote) {
    case SINGLE_TAP: case DOUBLE_HOLD: FUNC2(KC_QUOT); break;
    case SINGLE_HOLD: FUNC1(_NAV); break;
  }
}