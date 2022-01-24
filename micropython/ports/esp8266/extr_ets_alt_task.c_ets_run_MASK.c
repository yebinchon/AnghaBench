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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  idle_arg ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  my_timer_isr ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

bool FUNC8(void) {
#if USE_ETS_TASK
    #if SDK_BELOW_1_1_1
    ets_isr_attach(10, my_timer_isr, NULL);
    #endif
    _ets_run();
#else
//    ets_timer_init();
    *(char*)0x3FFFC6FC = 0;
    FUNC2();
    FUNC7("ets_alt_task: ets_run\n");
#if DEBUG
    dump_tasks();
#endif
    FUNC3();
    while (1) {
        if (!FUNC5()) {
            //printf("idle\n");
            FUNC2();
            if (&idle_cb) {
                FUNC6(idle_arg);
            }
            asm("waiti 0");
            FUNC3();
        }
    }
#endif
}