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
typedef  int mp_uint_t ;

/* Variables and functions */
 int HAL_NVIC_INT_CTRL_REG ; 
 int HAL_VECTACTIVE_MASK ; 
 int HAL_tickCount ; 
 scalar_t__ IRQ_STATE_ENABLED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int portTICK_PERIOD_MS ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

void FUNC7(mp_uint_t delay) {
    // only if we are not within interrupt context and interrupts are enabled
    if ((HAL_NVIC_INT_CTRL_REG & HAL_VECTACTIVE_MASK) == 0 && FUNC5() == IRQ_STATE_ENABLED) {
        FUNC1();
        #ifdef USE_FREERTOS
            vTaskDelay (delay / portTICK_PERIOD_MS);
        #else
            uint32_t start = HAL_tickCount;
            // wraparound of tick is taken care of by 2's complement arithmetic.
            while (HAL_tickCount - start < delay) {
                // enter sleep mode, waiting for (at least) the SysTick interrupt.
                FUNC4();
            }
        #endif
        FUNC0();
    } else {
        for (int ms = 0; ms < delay; ms++) {
            FUNC3(FUNC2(1000));
        }
    }
}