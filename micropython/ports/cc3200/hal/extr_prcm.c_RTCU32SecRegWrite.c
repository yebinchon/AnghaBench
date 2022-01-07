
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PRCMHIBRegWrite (int ,unsigned long) ;
 int RTC_SECS_U32_REG_ADDR ;

__attribute__((used)) static void RTCU32SecRegWrite(unsigned long u32Msec)
{
  MAP_PRCMHIBRegWrite(RTC_SECS_U32_REG_ADDR, u32Msec);
}
