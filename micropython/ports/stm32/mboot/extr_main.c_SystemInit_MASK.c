#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_6__ {int CSR1; int /*<<< orphan*/  CR3; } ;
struct TYPE_5__ {int CFGR; int D1CFGR; int D2CFGR; int D3CFGR; int PLLCKSELR; int D1CCIPR; int D2CCIP1R; int D2CCIP2R; int D3CCIPR; int CIR; int CIER; int /*<<< orphan*/  CR; int /*<<< orphan*/  PLLCFGR; } ;
struct TYPE_4__ {int /*<<< orphan*/  CCR; int /*<<< orphan*/  VTOR; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_RCC_CR_1ST ; 
 int /*<<< orphan*/  CONFIG_RCC_CR_2ND ; 
 int /*<<< orphan*/  CONFIG_RCC_PLLCFGR ; 
 int /*<<< orphan*/  FLASH_BASE ; 
 TYPE_3__* PWR ; 
 int /*<<< orphan*/  PWR_CR3_LDOEN ; 
 int PWR_CSR1_ACTVOSRDY ; 
 TYPE_2__* RCC ; 
 TYPE_1__* SCB ; 
 int /*<<< orphan*/  SCB_CCR_STKALIGN_Msk ; 

void FUNC0(void) {
    #if defined(STM32H7)
    // Configure write-once power options, and wait for voltage levels to be ready
    PWR->CR3 = PWR_CR3_LDOEN;
    while (!(PWR->CSR1 & PWR_CSR1_ACTVOSRDY)) {
    }
    #endif

    // Set HSION bit
    RCC->CR |= CONFIG_RCC_CR_1ST;

    // Reset CFGR register
    RCC->CFGR = 0x00000000;

    // Reset HSEON, CSSON and PLLON bits
    RCC->CR &= ~CONFIG_RCC_CR_2ND;

    // Reset PLLCFGR register
    RCC->PLLCFGR = CONFIG_RCC_PLLCFGR;

    #if defined(STM32H7)
    // Reset PLL and clock configuration registers
    RCC->D1CFGR = 0x00000000;
    RCC->D2CFGR = 0x00000000;
    RCC->D3CFGR = 0x00000000;
    RCC->PLLCKSELR = 0x00000000;
    RCC->D1CCIPR = 0x00000000;
    RCC->D2CCIP1R = 0x00000000;
    RCC->D2CCIP2R = 0x00000000;
    RCC->D3CCIPR = 0x00000000;
    #endif

    // Reset HSEBYP bit
    RCC->CR &= (uint32_t)0xFFFBFFFF;

    // Disable all interrupts
    #if defined(STM32F4) || defined(STM32F7)
    RCC->CIR = 0x00000000;
    #elif defined(STM32H7)
    RCC->CIER = 0x00000000;
    #endif

    // Set location of vector table
    SCB->VTOR = FLASH_BASE;

    // Enable 8-byte stack alignment for IRQ handlers, in accord with EABI
    SCB->CCR |= SCB_CCR_STKALIGN_Msk;
}