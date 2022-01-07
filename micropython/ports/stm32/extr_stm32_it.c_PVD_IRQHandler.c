
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI_PVD_OUTPUT ;
 int Handle_EXTI_Irq (int ) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int PVD_IRQn ;

void PVD_IRQHandler(void) {
    IRQ_ENTER(PVD_IRQn);
    Handle_EXTI_Irq(EXTI_PVD_OUTPUT);
    IRQ_EXIT(PVD_IRQn);
}
