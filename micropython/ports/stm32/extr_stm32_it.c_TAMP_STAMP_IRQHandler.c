
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI_RTC_TIMESTAMP ;
 int Handle_EXTI_Irq (int ) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int TAMP_STAMP_IRQn ;

void TAMP_STAMP_IRQHandler(void) {
    IRQ_ENTER(TAMP_STAMP_IRQn);
    Handle_EXTI_Irq(EXTI_RTC_TIMESTAMP);
    IRQ_EXIT(TAMP_STAMP_IRQn);
}
