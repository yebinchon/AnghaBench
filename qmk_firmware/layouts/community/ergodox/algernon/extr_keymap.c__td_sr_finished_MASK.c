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
 int /*<<< orphan*/  KC_MSTP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (qk_tap_dance_state_t *state, void *user_data) {
  if (state->count == 1) {
    FUNC0 (KC_MSTP);
  }
  if (state->count >= 4) {
    FUNC3("CMD:reflash\n");
    FUNC4 (1000);
    FUNC1 ();
    FUNC2 (state);
  }
}