#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_5 ; 
 int /*<<< orphan*/  KC_B ; 
 int /*<<< orphan*/  KC_ENT ; 
 int /*<<< orphan*/  KC_LCTRL ; 
 int /*<<< orphan*/  KC_LSHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    FUNC1("tmux"); FUNC2(KC_ENT); FUNC4(KC_ENT);
  } else if (state->count == 2) {
    FUNC3(FUNC0(KC_LCTRL));
    FUNC2(KC_B); FUNC4(KC_B);
    FUNC5(FUNC0(KC_LCTRL));
    FUNC3(FUNC0(KC_LSHIFT));
    FUNC2(KC_5); FUNC4(KC_5);
    FUNC5(FUNC0(KC_LSHIFT));
  }
}