
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM4_IRQn ;
 int timer_irq_handler (int) ;

void TIM4_IRQHandler(void) {
    IRQ_ENTER(TIM4_IRQn);
    timer_irq_handler(4);
    IRQ_EXIT(TIM4_IRQn);
}
