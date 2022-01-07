
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int CSR1; int CR3; } ;
struct TYPE_5__ {int CFGR; int D1CFGR; int D2CFGR; int D3CFGR; int PLLCKSELR; int D1CCIPR; int D2CCIP1R; int D2CCIP2R; int D3CCIPR; int CIR; int CIER; int CR; int PLLCFGR; } ;
struct TYPE_4__ {int CCR; int VTOR; } ;


 int CONFIG_RCC_CR_1ST ;
 int CONFIG_RCC_CR_2ND ;
 int CONFIG_RCC_PLLCFGR ;
 int FLASH_BASE ;
 TYPE_3__* PWR ;
 int PWR_CR3_LDOEN ;
 int PWR_CSR1_ACTVOSRDY ;
 TYPE_2__* RCC ;
 TYPE_1__* SCB ;
 int SCB_CCR_STKALIGN_Msk ;

void SystemInit(void) {
    RCC->CR |= CONFIG_RCC_CR_1ST;


    RCC->CFGR = 0x00000000;


    RCC->CR &= ~CONFIG_RCC_CR_2ND;


    RCC->PLLCFGR = CONFIG_RCC_PLLCFGR;
    RCC->CR &= (uint32_t)0xFFFBFFFF;
    SCB->VTOR = FLASH_BASE;


    SCB->CCR |= SCB_CCR_STKALIGN_Msk;
}
