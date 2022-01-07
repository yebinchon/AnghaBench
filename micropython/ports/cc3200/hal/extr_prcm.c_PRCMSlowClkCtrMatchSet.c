
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_IRQ_LSW_CONF ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_IRQ_MSW_CONF ;
 int MAP_PRCMHIBRegWrite (scalar_t__,unsigned long) ;

void PRCMSlowClkCtrMatchSet(unsigned long long ullValue)
{



  MAP_PRCMHIBRegWrite(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_IRQ_LSW_CONF,
                                           (unsigned long)(ullValue));
  MAP_PRCMHIBRegWrite(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_IRQ_MSW_CONF,
                                           (unsigned long)(ullValue>>32));
}
