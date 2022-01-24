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
#define  DOUBLE_HOLD 132 
#define  DOUBLE_TAP 131 
 int /*<<< orphan*/  KC_QUOTE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SINGLE_HOLD 130 
#define  SINGLE_TAP 129 
#define  TRIPLE_TAP 128 
 int /*<<< orphan*/  _NAV ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tap_state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(qk_tap_dance_state_t *state, void *user_data) {
  switch (tap_state.quote) {
    case SINGLE_TAP: case DOUBLE_HOLD: FUNC3(KC_QUOTE); break;
    case DOUBLE_TAP: FUNC0("\""); break;
    case TRIPLE_TAP: FUNC1(_NAV); break;
    case SINGLE_HOLD: FUNC2(_NAV); break;
  }
  tap_state.quote = 0;
}