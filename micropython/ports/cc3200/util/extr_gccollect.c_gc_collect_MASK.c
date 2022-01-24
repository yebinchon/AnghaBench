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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int mp_uint_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void**,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  stack_top ; 

void FUNC6(void) {
    // start the GC
    FUNC3();

    // get the registers and the sp
    mp_uint_t regs[10];
    mp_uint_t sp = FUNC4(regs);

    // trace the stack, including the registers (since they live on the stack in this function)
    FUNC2((void**)sp, ((mp_uint_t)FUNC0(stack_top) - sp) / sizeof(uint32_t));

    // trace root pointers from any threads
    #if MICROPY_PY_THREAD
    mp_thread_gc_others();
    #endif

    // end the GC
    FUNC1();
}