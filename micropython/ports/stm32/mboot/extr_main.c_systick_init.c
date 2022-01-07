
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_PRI_SYSTICK ;
 int NVIC_SetPriority (int ,int ) ;
 int SysTick_Config (int) ;
 int SysTick_IRQn ;
 int SystemCoreClock ;

void systick_init(void) {

    SysTick_Config(SystemCoreClock / 1000);
    NVIC_SetPriority(SysTick_IRQn, IRQ_PRI_SYSTICK);
}
