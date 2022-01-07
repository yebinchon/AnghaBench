
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ISR; } ;


 int EXTI_RTC_WAKEUP ;
 int Handle_EXTI_Irq (int ) ;
 int IRQ_ENTER (int ) ;
 int IRQ_EXIT (int ) ;
 TYPE_1__* RTC ;
 int RTC_ISR_WUTF ;
 int RTC_WKUP_IRQn ;

void RTC_WKUP_IRQHandler(void) {
    IRQ_ENTER(RTC_WKUP_IRQn);
    RTC->ISR &= ~RTC_ISR_WUTF;
    Handle_EXTI_Irq(EXTI_RTC_WAKEUP);
    IRQ_EXIT(RTC_WKUP_IRQn);
}
