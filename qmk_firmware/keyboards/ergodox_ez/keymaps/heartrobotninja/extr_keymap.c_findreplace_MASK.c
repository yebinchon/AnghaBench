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
 int /*<<< orphan*/  KC_F ; 
 int /*<<< orphan*/  KC_H ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(qk_tap_dance_state_t *state, void *user_data)
{
  if (state->count > 1)
  {
    FUNC0(KC_LCTL);
    FUNC0(KC_H);
    FUNC2(KC_H);
    FUNC2(KC_LCTL);
  }
  else
  {
    FUNC0(KC_LCTL);
    FUNC0(KC_F);
    FUNC2(KC_F);
    FUNC2(KC_LCTL);
  }
  FUNC1(state);
}