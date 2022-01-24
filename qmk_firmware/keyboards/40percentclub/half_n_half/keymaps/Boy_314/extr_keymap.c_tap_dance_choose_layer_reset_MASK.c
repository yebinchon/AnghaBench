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
 int /*<<< orphan*/  _DVORAK ; 
 int /*<<< orphan*/  _LOWER ; 
 int /*<<< orphan*/  _QWERTY ; 
 int /*<<< orphan*/  _RAISE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  default_layer_state ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3 (qk_tap_dance_state_t *state, void *user_data) {
	switch (state->count) {
		case 1:
			FUNC1(_LOWER);
			break;
		case 2:
			FUNC1(_RAISE);
			break;
		case 3:
			if (FUNC0(default_layer_state) == _DVORAK) {
				FUNC2(_QWERTY);
			}
			else if (FUNC0(default_layer_state) == _QWERTY) {
				FUNC2(_DVORAK);
			}
			break;
	}
}