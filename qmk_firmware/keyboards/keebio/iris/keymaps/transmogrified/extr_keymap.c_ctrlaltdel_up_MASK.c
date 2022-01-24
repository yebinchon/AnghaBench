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
 int /*<<< orphan*/  KC_DEL ; 
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count >= 3) {
    FUNC0 (KC_DEL);
    FUNC0 (KC_LALT);
    FUNC0 (KC_LCTL);
  } else {
  }
}