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

/* Variables and functions */
 int /*<<< orphan*/  _ram_end ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void**,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 uintptr_t FUNC3 () ; 

void FUNC4(void) {
    // start the GC
    FUNC2();

    // Get stack pointer
    uintptr_t sp = FUNC3();

    // trace the stack, including the registers (since they live on the stack in this function)
    FUNC1((void**)sp, ((uint32_t)&_ram_end - sp) / sizeof(uint32_t));

    // end the GC
    FUNC0();
}