
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int ACR; } ;
struct TYPE_3__ {int CR; int CFGR; int PLLCFGR; } ;


 TYPE_2__* FLASH ;
 int FLASH_ACR_DCEN ;
 int FLASH_ACR_ICEN ;
 int FLASH_ACR_LATENCY_5WS ;
 TYPE_1__* RCC ;
 int RCC_CFGR_HPRE_DIV1 ;
 int RCC_CFGR_PPRE1_DIV4 ;
 int RCC_CFGR_PPRE2_DIV2 ;
 int RCC_CFGR_SWS ;
 int RCC_CFGR_SWS_PLL ;
 int RCC_CFGR_SW_PLL ;
 int RCC_CR_HSEON ;
 int RCC_CR_HSERDY ;
 int RCC_CR_PLLON ;
 int RCC_CR_PLLRDY ;
 int RCC_PLLCFGR_PLLM_3 ;
 int RCC_PLLCFGR_PLLN_5 ;
 int RCC_PLLCFGR_PLLN_6 ;
 int RCC_PLLCFGR_PLLQ_2 ;
 int RCC_PLLCFGR_PLLSRC_HSE ;

void clock_init(void) {

  RCC->CR |= RCC_CR_HSEON;
  while ((RCC->CR & RCC_CR_HSERDY) == 0);


  RCC->CFGR = RCC_CFGR_HPRE_DIV1 | RCC_CFGR_PPRE2_DIV2 | RCC_CFGR_PPRE1_DIV4;


  RCC->PLLCFGR = RCC_PLLCFGR_PLLQ_2 | RCC_PLLCFGR_PLLM_3 |
                 RCC_PLLCFGR_PLLN_6 | RCC_PLLCFGR_PLLN_5 | RCC_PLLCFGR_PLLSRC_HSE;


  RCC->CR |= RCC_CR_PLLON;
  while ((RCC->CR & RCC_CR_PLLRDY) == 0);



  FLASH->ACR = FLASH_ACR_ICEN | FLASH_ACR_DCEN | FLASH_ACR_LATENCY_5WS;


  RCC->CFGR |= RCC_CFGR_SW_PLL;
  while ((RCC->CFGR & RCC_CFGR_SWS) != RCC_CFGR_SWS_PLL);


}
