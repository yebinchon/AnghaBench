
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI9_5_IRQn ;
 int Handle_EXTI_Irq (int) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;

void EXTI9_5_IRQHandler(void) {
    IRQ_ENTER(EXTI9_5_IRQn);
    Handle_EXTI_Irq(5);
    Handle_EXTI_Irq(6);
    Handle_EXTI_Irq(7);
    Handle_EXTI_Irq(8);
    Handle_EXTI_Irq(9);
    IRQ_EXIT(EXTI9_5_IRQn);
}
