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
typedef  int /*<<< orphan*/  HWREG ;

/* Variables and functions */
 int /*<<< orphan*/  FAULT_SYSTICK ; 
 int HAL_FCPU_HZ ; 
 int /*<<< orphan*/  HAL_IncrementTick ; 
 int HAL_SYSTICK_PERIOD_US ; 
 scalar_t__ HAL_tickCount ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 (void) {
    HAL_tickCount = 0;
    FUNC3(HAL_IncrementTick);
    FUNC0(FAULT_SYSTICK);
    FUNC2();
    FUNC4(HAL_FCPU_HZ / HAL_SYSTICK_PERIOD_US);
    // Force a reload of the SysTick counter register
    HWREG(NVIC_ST_CURRENT) = 0;
    FUNC1();
}