#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int CSR; int CSR1; int CPUCR; int SR1; int /*<<< orphan*/  SCR; int /*<<< orphan*/  CR1; int /*<<< orphan*/  CR; } ;
struct TYPE_3__ {int RCC_SR; } ;

/* Variables and functions */
 TYPE_2__* PWR ; 
 int PWR_CPUCR_CSSF ; 
 int PWR_CPUCR_SBF ; 
 int PWR_CPUCR_STOPF ; 
 int /*<<< orphan*/  PWR_CR1_CSBF ; 
 int /*<<< orphan*/  PWR_CR_CSBF ; 
 int PWR_CSR1_SBF ; 
 int PWR_CSR_SBF ; 
 int /*<<< orphan*/  PWR_SCR_CSBF ; 
 int PWR_SR1_SBF ; 
 int /*<<< orphan*/  PYB_RESET_DEEPSLEEP ; 
 int /*<<< orphan*/  PYB_RESET_HARD ; 
 int /*<<< orphan*/  PYB_RESET_POWER_ON ; 
 int /*<<< orphan*/  PYB_RESET_SOFT ; 
 int /*<<< orphan*/  PYB_RESET_WDT ; 
 TYPE_1__* RCC ; 
 int RCC_SR_BORRSTF ; 
 int RCC_SR_IWDGRSTF ; 
 int RCC_SR_PINRSTF ; 
 int RCC_SR_PORRSTF ; 
 int RCC_SR_RMVF ; 
 int RCC_SR_WWDGRSTF ; 
 int /*<<< orphan*/  reset_cause ; 

void FUNC0(void) {
    #if defined(STM32F4)
    if (PWR->CSR & PWR_CSR_SBF) {
        // came out of standby
        reset_cause = PYB_RESET_DEEPSLEEP;
        PWR->CR |= PWR_CR_CSBF;
    } else
    #elif defined(STM32F7)
    if (PWR->CSR1 & PWR_CSR1_SBF) {
        // came out of standby
        reset_cause = PYB_RESET_DEEPSLEEP;
        PWR->CR1 |= PWR_CR1_CSBF;
    } else
    #elif defined(STM32H7)
    if (PWR->CPUCR & PWR_CPUCR_SBF || PWR->CPUCR & PWR_CPUCR_STOPF) {
        // came out of standby or stop mode
        reset_cause = PYB_RESET_DEEPSLEEP;
        PWR->CPUCR |= PWR_CPUCR_CSSF;
    } else
    #elif defined(STM32L4)
    if (PWR->SR1 & PWR_SR1_SBF) {
        // came out of standby
        reset_cause = PYB_RESET_DEEPSLEEP;
        PWR->SCR |= PWR_SCR_CSBF;
    } else
    #endif
    {
        // get reset cause from RCC flags
        uint32_t state = RCC->RCC_SR;
        if (state & RCC_SR_IWDGRSTF || state & RCC_SR_WWDGRSTF) {
            reset_cause = PYB_RESET_WDT;
        } else if (state & RCC_SR_PORRSTF
            #if !defined(STM32F0)
            || state & RCC_SR_BORRSTF
            #endif
            ) {
            reset_cause = PYB_RESET_POWER_ON;
        } else if (state & RCC_SR_PINRSTF) {
            reset_cause = PYB_RESET_HARD;
        } else {
            // default is soft reset
            reset_cause = PYB_RESET_SOFT;
        }
    }
    // clear RCC reset flags
    RCC->RCC_SR |= RCC_SR_RMVF;
}