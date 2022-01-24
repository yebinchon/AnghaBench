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
typedef  scalar_t__ uint8_t ;
struct TYPE_3__ {int count; } ;
typedef  TYPE_1__ qk_tap_dance_state_t ;

/* Variables and functions */
 scalar_t__ _GAMING ; 
 scalar_t__ _QWERTY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void FUNC4 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {

  } else if (state->count == 2) {

  } else if (state->count == 3) {
    uint8_t layer = FUNC0(layer_state);
    if (layer == _QWERTY) {
        FUNC1(_QWERTY);
        FUNC2(_GAMING);
        // swirling rgb
        FUNC3(12);
    } else {
        FUNC1(_GAMING);
        FUNC2(_QWERTY);
        FUNC3(1);
    }
  }
}