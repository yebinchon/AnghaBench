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
 int /*<<< orphan*/  KC_4 ; 
 int /*<<< orphan*/  KC_DELETE ; 
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTRL ; 
 int /*<<< orphan*/  KC_LGUI ; 
 int /*<<< orphan*/  KC_LSHIFT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    FUNC2(FUNC0(KC_LCTRL));
    FUNC2(FUNC0(KC_LALT));
    FUNC1(KC_DELETE);
    FUNC4(FUNC0(KC_LCTRL));
    FUNC4(FUNC0(KC_LALT));
    FUNC3(KC_DELETE);
  } else if (state->count == 2) {
    FUNC2(FUNC0(KC_LGUI));
    FUNC2(FUNC0(KC_LALT));
    FUNC1(KC_ESC);
    FUNC4(FUNC0(KC_LGUI));
    FUNC4(FUNC0(KC_LALT));
    FUNC3(KC_ESC);
  } else if (state->count == 3) {
    FUNC2(FUNC0(KC_LGUI));
    FUNC2(FUNC0(KC_LSHIFT));
    FUNC1(KC_4);
    FUNC4(FUNC0(KC_LGUI));
    FUNC4(FUNC0(KC_LSHIFT));
    FUNC3(KC_4);
  }
}