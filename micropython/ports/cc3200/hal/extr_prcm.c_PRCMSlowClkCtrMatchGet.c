
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_IRQ_LSW_CONF ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_IRQ_MSW_CONF ;
 unsigned long long MAP_PRCMHIBRegRead (scalar_t__) ;

unsigned long long PRCMSlowClkCtrMatchGet(void)
{
  unsigned long long ullValue;




  ullValue = MAP_PRCMHIBRegRead(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_IRQ_MSW_CONF);
  ullValue = ullValue<<32;
  ullValue |= MAP_PRCMHIBRegRead(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_IRQ_LSW_CONF);




  return ullValue;
}
