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
 int /*<<< orphan*/  IRQ_PRI_SYSTICK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  SysTick_IRQn ; 
 int SystemCoreClock ; 

void FUNC2(void) {
    // Configure SysTick as 1ms ticker
    FUNC1(SystemCoreClock / 1000);
    FUNC0(SysTick_IRQn, IRQ_PRI_SYSTICK);
}