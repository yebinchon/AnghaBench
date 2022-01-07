
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM2_IRQn ;
 int timer_irq_handler (int) ;

void TIM2_IRQHandler(void) {
    IRQ_ENTER(TIM2_IRQn);
    timer_irq_handler(2);
    IRQ_EXIT(TIM2_IRQn);
}
