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
 int STACK_END ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int*) ; 

void FUNC4(void) {
    // start the GC
    FUNC2();

    // get the registers and the sp
    mp_uint_t regs[8];
    mp_uint_t sp = FUNC3(regs);

    // trace the stack, including the registers (since they live on the stack in this function)
    FUNC1((void**)sp, (STACK_END - sp) / sizeof(uint32_t));

    // end the GC
    FUNC0();
}