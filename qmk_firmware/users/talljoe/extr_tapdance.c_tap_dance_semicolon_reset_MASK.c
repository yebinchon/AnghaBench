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
struct TYPE_2__ {int semicolon; } ;

/* Variables and functions */
#define  DOUBLE_HOLD 133 
#define  DOUBLE_TAP 132 
 int /*<<< orphan*/  KC_SCLN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  SINGLE_HOLD 131 
#define  SINGLE_TAP 130 
#define  SPECIAL 129 
#define  TRIPLE_TAP 128 
 int /*<<< orphan*/  _NUM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ tap_state ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(qk_tap_dance_state_t *state, void *user_data) {
  switch (tap_state.semicolon) {
    case SINGLE_TAP: case DOUBLE_HOLD: FUNC4(KC_SCLN); break;
    case DOUBLE_TAP: {
      if (FUNC1()) {
        FUNC0(";;"); // send normal when mods are pressed
      }
      else {
        FUNC0(";\n");
      }
      break;
    }
    case TRIPLE_TAP: {
      FUNC0(";\n\n");
    }
    case SPECIAL: FUNC2(_NUM); break;
    case SINGLE_HOLD: FUNC3(_NUM); break;
  }
  tap_state.semicolon = 0;
}