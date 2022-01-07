
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAL_TIM_IRQHandler (int *) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM5_Handle ;
 int TIM5_IRQn ;
 int timer_irq_handler (int) ;

void TIM5_IRQHandler(void) {
    IRQ_ENTER(TIM5_IRQn);
    timer_irq_handler(5);
    HAL_TIM_IRQHandler(&TIM5_Handle);
    IRQ_EXIT(TIM5_IRQn);
}
