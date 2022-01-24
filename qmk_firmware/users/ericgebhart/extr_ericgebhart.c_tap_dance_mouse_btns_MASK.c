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
 int /*<<< orphan*/  KC_BTN1 ; 
 int /*<<< orphan*/  KC_BTN2 ; 
 int /*<<< orphan*/  KC_BTN3 ; 
 int /*<<< orphan*/  KC_BTN4 ; 
 int /*<<< orphan*/  KC_BTN5 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2 (qk_tap_dance_state_t *state, void *user_data) {
  switch(state->count){
  case 1:
    FUNC0(KC_BTN1);
    break;
  case 2:
    FUNC0(KC_BTN2);
    break;
  case 3:
    FUNC0(KC_BTN3);
    break;
  case 4:
    FUNC0(KC_BTN4);
    break;
  case 5:
    FUNC0(KC_BTN5);
    break;
  default:
    break;
  }
  FUNC1(state);
}