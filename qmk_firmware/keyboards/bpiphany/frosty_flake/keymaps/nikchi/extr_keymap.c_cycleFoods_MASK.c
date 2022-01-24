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
 size_t FOODS ; 
 int /*<<< orphan*/  KC_BSPC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/ * unicode_map ; 

void FUNC5(qk_tap_dance_state_t *state, void *user_data) {
  if(state->count == 1) {
    FUNC4();
    FUNC1(FUNC0(&unicode_map[FOODS]));
    FUNC3();
  }
  else if(state->count <= 87) {
    FUNC2(KC_BSPC);
    FUNC4();
    FUNC1(FUNC0(&unicode_map[FOODS])+state->count);
    FUNC3();
  }
}