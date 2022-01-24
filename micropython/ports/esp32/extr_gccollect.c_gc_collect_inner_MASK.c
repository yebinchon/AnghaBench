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
typedef  int uint32_t ;
typedef  int volatile mp_uint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int XCHAL_NUM_AREGS ; 
 int /*<<< orphan*/  FUNC1 (void**,int volatile) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stack_top ; 

__attribute__((used)) static void FUNC4(int level) {
    if (level < XCHAL_NUM_AREGS / 8) {
        FUNC4(level + 1);
        if (level != 0) {
            return;
        }
    }

    if (level == XCHAL_NUM_AREGS / 8) {
        // get the sp
        volatile uint32_t sp = (uint32_t)FUNC2();
        FUNC1((void**)sp, ((mp_uint_t)FUNC0(stack_top) - sp) / sizeof(uint32_t));
        return;
    }

    // trace root pointers from any threads
    #if MICROPY_PY_THREAD
    mp_thread_gc_others();
    #endif
}