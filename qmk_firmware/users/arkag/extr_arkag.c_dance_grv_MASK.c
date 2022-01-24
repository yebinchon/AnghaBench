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
 int /*<<< orphan*/  KC_GRAVE ; 
 int /*<<< orphan*/  KC_GRV ; 
 int /*<<< orphan*/  KC_SPACE ; 
 scalar_t__ aesthetic ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    FUNC1(KC_GRV);
    if (aesthetic) {
      FUNC1(KC_SPACE);
    }
  } else if (state->count == 2) {
    FUNC0(2, KC_GRAVE, false);
  } else {
    FUNC0(6, KC_GRAVE, false);
  }
}