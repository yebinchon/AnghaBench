
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TIM1_TRG_COM_TIM11_IRQn ;
 int timer_irq_handler (int) ;

void TIM1_TRG_COM_TIM11_IRQHandler(void) {
    IRQ_ENTER(TIM1_TRG_COM_TIM11_IRQn);
    timer_irq_handler(11);
    IRQ_EXIT(TIM1_TRG_COM_TIM11_IRQn);
}
