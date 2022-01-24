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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdin_ringbuf ; 

int FUNC3(void) {
    for (;;) {
        int c = FUNC2(&stdin_ringbuf);
        if (c != -1) {
            return c;
        }
        #if 0
        // Idles CPU but need more testing before enabling
        if (!ets_loop_iter()) {
            asm("waiti 0");
        }
        #else
        FUNC1(1);
        #endif
    }
}