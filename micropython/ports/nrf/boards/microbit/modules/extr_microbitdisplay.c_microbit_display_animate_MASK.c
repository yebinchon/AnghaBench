#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_int_t ;
typedef  int /*<<< orphan*/  microbit_display_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  ASYNC_MODE_ANIMATION ; 
 int /*<<< orphan*/ ** FUNC0 (int /*<<< orphan*/ ) ; 
 int async_clear ; 
 int /*<<< orphan*/  async_data ; 
 int /*<<< orphan*/  async_delay ; 
 int /*<<< orphan*/ * async_iterator ; 
 int /*<<< orphan*/  async_mode ; 
 scalar_t__ async_tick ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int wakeup_event ; 

void FUNC5(microbit_display_obj_t *self, mp_obj_t iterable, mp_int_t delay, bool clear, bool wait) {
    // Reset the repeat state.
    FUNC0(async_data)[0] = NULL;
    FUNC0(async_data)[1] = NULL;
    async_iterator = FUNC2(iterable, NULL);
    async_delay = delay;
    async_clear = clear;
    FUNC0(async_data)[0] = self; // so it doesn't get GC'd
    FUNC0(async_data)[1] = async_iterator;
    wakeup_event = false;
    mp_obj_t obj = FUNC3(async_iterator);
    FUNC1(obj);
    async_tick = 0;
    async_mode = ASYNC_MODE_ANIMATION;
    if (wait) {
        FUNC4();
    }
}