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
typedef  size_t uint8_t ;
struct TYPE_2__ {int key_interval; int /*<<< orphan*/  keycode; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t NUM_OF_DIABLO_KEYS ; 
 int /*<<< orphan*/  _DIABLO ; 
 TYPE_1__* diablo_timer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

void FUNC4(void) {
    for (uint8_t index = 0; index < NUM_OF_DIABLO_KEYS; index++) {
        // if key_interval is 0, it's disabled, so only run if it's set.  If it's set, check the timer.
        if (diablo_timer[index].key_interval && FUNC2(diablo_timer[index].timer) > (diablo_timer[index].key_interval * 1000)) {
            // reset the timer, since enough time has passed
            diablo_timer[index].timer = FUNC3();
            // send keycode ONLY if we're on the diablo layer.
            if (FUNC0(_DIABLO)) {
                FUNC1(diablo_timer[index].keycode);
            }
        }
    }
}