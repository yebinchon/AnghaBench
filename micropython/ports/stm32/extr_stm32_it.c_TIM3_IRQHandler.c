
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM3_IRQn ;
 int timer_irq_handler (int) ;

void TIM3_IRQHandler(void) {
    IRQ_ENTER(TIM3_IRQn);
    timer_irq_handler(3);
    IRQ_EXIT(TIM3_IRQn);
}
