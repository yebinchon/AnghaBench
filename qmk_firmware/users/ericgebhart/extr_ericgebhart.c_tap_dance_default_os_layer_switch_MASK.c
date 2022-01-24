#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;
struct TYPE_6__ {int mods; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RSFT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* keyboard_report ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5 (qk_tap_dance_state_t *state, void *user_data) {
  //uint8_t shifted = (get_mods() & MOD_BIT(KC_LSFT|KC_RSFT));
  bool shifted = ( keyboard_report->mods & (FUNC0(KC_LSFT)|FUNC0(KC_RSFT)) );
  int qwerty = FUNC1();


  // shifted, choose between layers on the other software keyboard
  if(shifted){
    if (qwerty)
      FUNC3(state->count);
    else
          FUNC4(state->count);

    // not shifted, choose between layers on the same software keyboard
  } else {
    if (qwerty)
      FUNC4(state->count);
    else
      FUNC3(state->count);
  }

  FUNC2(state);
}