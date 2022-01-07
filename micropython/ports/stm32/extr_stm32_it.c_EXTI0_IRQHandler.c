
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI0_IRQn ;
 int Handle_EXTI_Irq (int ) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;

void EXTI0_IRQHandler(void) {
    IRQ_ENTER(EXTI0_IRQn);
    Handle_EXTI_Irq(0);
    IRQ_EXIT(EXTI0_IRQn);
}
