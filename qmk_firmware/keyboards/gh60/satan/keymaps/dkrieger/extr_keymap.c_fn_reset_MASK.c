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
#define  DOUBLE_HOLD 130 
#define  SINGLE_HOLD 129 
#define  TRIPLE_HOLD 128 
 int /*<<< orphan*/  _FN ; 
 int /*<<< orphan*/  _MOUSE ; 
 int /*<<< orphan*/  _MOUSESHIFT ; 
 int /*<<< orphan*/  _UTIL ; 
 TYPE_1__ fn_tap_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1 (qk_tap_dance_state_t *state, void *user_data) {
  switch (fn_tap_state.state) {
    case SINGLE_HOLD: FUNC0(_FN); break;
    case DOUBLE_HOLD: FUNC0(_MOUSE); FUNC0(_MOUSESHIFT); break;
    case TRIPLE_HOLD: FUNC0(_UTIL);
  }
}