#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_5__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_NONUS_BSLASH ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* keyboard_report ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

void FUNC3 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    if (keyboard_report->mods & FUNC0(KC_LSFT)) {
      FUNC1 (KC_LSFT);
    } else {
      FUNC1 (KC_NONUS_BSLASH);
    }
  } else if (state->count == 2) {
    FUNC2(FUNC0(KC_LSFT));
    FUNC1(KC_NONUS_BSLASH);
  }
}