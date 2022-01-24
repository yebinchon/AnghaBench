#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qk_tap_dance_state_t ;
struct TYPE_2__ {int state; } ;

/* Variables and functions */
#define  DOUBLE_HOLD 131 
#define  SINGLE_HOLD 130 
#define  SINGLE_TAP 129 
#define  TRIPLE_TAP 128 
 int /*<<< orphan*/  _AL ; 
 int /*<<< orphan*/  _BL ; 
 int /*<<< orphan*/  _DL ; 
 int /*<<< orphan*/  _GM ; 
 int /*<<< orphan*/  active_layer ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__ dwltap_state ; 
 int gm_layer_act ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void FUNC2(qk_tap_dance_state_t *state, void *user_data) {
  dwltap_state.state = FUNC0(state);

  switch (dwltap_state.state) {
  case SINGLE_TAP:
    if (active_layer == _DL) {
      FUNC1(_BL);
    } else {
      FUNC1(_DL);
    }
    break;
  case SINGLE_HOLD:
    FUNC1(_DL);
    break;
  case DOUBLE_HOLD:
    FUNC1(_AL);
    break;
  case TRIPLE_TAP:
    if (gm_layer_act == true) {
      gm_layer_act = false;
      FUNC1(_BL);
    } else {
      gm_layer_act = true;
      FUNC1(_GM);
    }
  default:
    FUNC1(_BL);
    break;
  }
}