
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM1_BRK_TIM9_IRQn ;
 int timer_irq_handler (int) ;

void TIM1_BRK_TIM9_IRQHandler(void) {
    IRQ_ENTER(TIM1_BRK_TIM9_IRQn);
    timer_irq_handler(9);
    IRQ_EXIT(TIM1_BRK_TIM9_IRQn);
}
