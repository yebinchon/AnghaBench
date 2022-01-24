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
struct TYPE_3__ {int count; int /*<<< orphan*/  pressed; scalar_t__ interrupted; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int DOUBLE_HOLD ; 
 int DOUBLE_TAP ; 
 int SINGLE_HOLD ; 
 int SINGLE_TAP ; 
 int TRIPLE_HOLD ; 
 int TRIPLE_TAP ; 

int FUNC0 (qk_tap_dance_state_t *state) {
	if (state->count == 1) {
		if (state->interrupted || !state->pressed) return SINGLE_TAP;
		// key not interrupted, but still held sends 'HOLD'
		else return SINGLE_HOLD;
	}
	else if (state->count == 2) {
		if (state->interrupted || !state->pressed) return DOUBLE_TAP;
		else return DOUBLE_HOLD;
	}
	else if (state->count == 3) {
		if (state->interrupted || !state->pressed)return TRIPLE_TAP;
		else return TRIPLE_HOLD;
	}
	else return 8; // magic number that i dont believe works. 
}