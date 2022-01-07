
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXTI_RTC_ALARM ;
 int Handle_EXTI_Irq (int ) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 int RTC_Alarm_IRQn ;

void RTC_Alarm_IRQHandler(void) {
    IRQ_ENTER(RTC_Alarm_IRQn);
    Handle_EXTI_Irq(EXTI_RTC_ALARM);
    IRQ_EXIT(RTC_Alarm_IRQn);
}
