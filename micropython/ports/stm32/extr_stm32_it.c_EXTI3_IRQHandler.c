
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI3_IRQn ;
 int Handle_EXTI_Irq (int) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;

void EXTI3_IRQHandler(void) {
    IRQ_ENTER(EXTI3_IRQn);
    Handle_EXTI_Irq(3);
    IRQ_EXIT(EXTI3_IRQn);
}
