#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_MPLY ; 
 int /*<<< orphan*/  KC_MUTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(qk_tap_dance_state_t *state, void *user_data) {
  switch (state->count) {
    case 1:
      FUNC1(KC_MPLY);
      FUNC0(state);
      break;
    case 2:
      FUNC1(KC_MUTE);
      FUNC0(state);
      break;
  }
}