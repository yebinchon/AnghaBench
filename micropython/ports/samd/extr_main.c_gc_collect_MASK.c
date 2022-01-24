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

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (void**,uintptr_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 uintptr_t FUNC4 (uintptr_t*) ; 
 int /*<<< orphan*/  stack_top ; 

void FUNC5(void) {
    FUNC3();
    uintptr_t regs[10];
    uintptr_t sp = FUNC4(regs);
    FUNC2((void**)sp, ((uintptr_t)FUNC0(stack_top) - sp) / sizeof(uint32_t));
    FUNC1();
}