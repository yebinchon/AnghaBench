
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int CTRL; } ;


 int HAL_RCC_GetHCLKFreq () ;
 int IRQ_PRI_SYSTICK ;
 int NVIC_SetPriority (int ,int ) ;
 int SYSTICK_CLKSOURCE_HCLK ;
 TYPE_1__* SysTick ;
 int SysTick_Config (int) ;
 int SysTick_IRQn ;

__attribute__((used)) static inline void powerctrl_config_systick(void) {

    SysTick->CTRL |= SYSTICK_CLKSOURCE_HCLK;
    SysTick_Config(HAL_RCC_GetHCLKFreq() / 1000);
    NVIC_SetPriority(SysTick_IRQn, IRQ_PRI_SYSTICK);
}
