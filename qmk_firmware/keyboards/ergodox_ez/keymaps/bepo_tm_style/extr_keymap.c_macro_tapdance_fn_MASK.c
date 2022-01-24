#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_7__ {int count; } ;
typedef  TYPE_2__ qk_tap_dance_state_t ;
struct TYPE_6__ {int pressed; } ;
struct TYPE_8__ {TYPE_1__ event; } ;
typedef  TYPE_3__ keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  DYN_MACRO_PLAY1 ; 
 int /*<<< orphan*/  DYN_REC_START1 ; 
 int /*<<< orphan*/  DYN_REC_STOP ; 
 int /*<<< orphan*/  current_layer_state ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int is_macro1_recording ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_3__*) ; 

void FUNC3(qk_tap_dance_state_t *state, void *user_data) {
  uint16_t keycode;
  keyrecord_t record;
  FUNC0("macro_tap_dance_fn %d\n", state->count);
  if (is_macro1_recording) {
    keycode = DYN_REC_STOP;
    is_macro1_recording = false;
    FUNC1(current_layer_state);
  } else if (state->count == 1) {
    keycode = DYN_MACRO_PLAY1;
  } else {
    keycode = DYN_REC_START1;
    is_macro1_recording = true;
    FUNC1(current_layer_state);
  }

  record.event.pressed = true;
  FUNC2(keycode, &record);
  record.event.pressed = false;
  FUNC2(keycode, &record);
}