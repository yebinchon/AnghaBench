
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_GPIO_WAKE_EN ;
 scalar_t__ HIB3P3_O_MEM_HIB_RTC_WAKE_EN ;
 unsigned long MAP_PRCMHIBRegRead (scalar_t__) ;
 int MAP_PRCMHIBRegWrite (scalar_t__,unsigned long) ;

void PRCMHibernateWakeupSourceDisable(unsigned long ulHIBWakupSrc)
{
  unsigned long ulRegValue;




  ulRegValue = MAP_PRCMHIBRegRead(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_WAKE_EN);




  ulRegValue &= ~(ulHIBWakupSrc & 0x1);




  MAP_PRCMHIBRegWrite(HIB3P3_BASE+HIB3P3_O_MEM_HIB_RTC_WAKE_EN,ulRegValue);




  ulRegValue = MAP_PRCMHIBRegRead(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_EN);




  ulRegValue &= ~((ulHIBWakupSrc>>16)&0xFF);




  MAP_PRCMHIBRegWrite(HIB3P3_BASE+HIB3P3_O_MEM_GPIO_WAKE_EN,ulRegValue);
}
