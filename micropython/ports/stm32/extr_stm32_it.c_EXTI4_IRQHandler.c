
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI4_IRQn ;
 int Handle_EXTI_Irq (int) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;

void EXTI4_IRQHandler(void) {
    IRQ_ENTER(EXTI4_IRQn);
    Handle_EXTI_Irq(4);
    IRQ_EXIT(EXTI4_IRQn);
}
