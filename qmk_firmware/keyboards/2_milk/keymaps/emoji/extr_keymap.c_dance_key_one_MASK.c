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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  X_ENTER ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

void FUNC5 (qk_tap_dance_state_t *state, void *user_data) {
    if (state->count == 1) {
        FUNC4("00AF 005C 005F 0028 30C4 0029 005F 002F 00AF"); // ¯\_(ツ)_/¯
        FUNC0(FUNC1(X_ENTER));
        FUNC3 (state);
    } else if (state->count == 2) {
        FUNC2(+1);
        FUNC3 (state);
    }
}