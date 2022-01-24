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
struct TYPE_2__ {int /*<<< orphan*/  CTRL; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  IRQ_PRI_SYSTICK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SYSTICK_CLKSOURCE_HCLK ; 
 TYPE_1__* SysTick ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  SysTick_IRQn ; 

__attribute__((used)) static inline void FUNC3(void) {
    // Configure SYSTICK to run at 1kHz (1ms interval)
    SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
    FUNC2(FUNC0() / 1000);
    FUNC1(SysTick_IRQn, IRQ_PRI_SYSTICK);
}