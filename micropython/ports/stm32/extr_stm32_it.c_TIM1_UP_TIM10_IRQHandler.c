
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM1_UP_TIM10_IRQn ;
 int timer_irq_handler (int) ;

void TIM1_UP_TIM10_IRQHandler(void) {
    IRQ_ENTER(TIM1_UP_TIM10_IRQn);
    timer_irq_handler(1);
    timer_irq_handler(10);
    IRQ_EXIT(TIM1_UP_TIM10_IRQn);
}
