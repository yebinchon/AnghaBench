
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_LSW ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_MSW ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_TIMER_READ ;
 unsigned long long MAP_PRCMHIBRegRead (scalar_t__) ;
 int MAP_PRCMHIBRegWrite (scalar_t__,int) ;

unsigned long long PRCMSlowClkCtrGet(void)
{
  unsigned long long ullRTCVal;




  MAP_PRCMHIBRegWrite(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_TIMER_READ, 0x1);




  ullRTCVal = MAP_PRCMHIBRegRead(HIB3P3_BASE + HIB3P3_O_MEM_HIB_RTC_TIMER_MSW);
  ullRTCVal = ullRTCVal << 32;
  ullRTCVal |= MAP_PRCMHIBRegRead(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_TIMER_LSW);

  return ullRTCVal;
}
