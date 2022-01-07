
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ HIB3P3_BASE ;
 scalar_t__ HIB3P3_O_MEM_HIB_WAKE_STATUS ;
 int MAP_PRCMHIBRegRead (scalar_t__) ;

unsigned long PRCMHibernateWakeupCauseGet(void)
{
  return ((MAP_PRCMHIBRegRead(HIB3P3_BASE + HIB3P3_O_MEM_HIB_WAKE_STATUS)>>1)&0xF);
}
