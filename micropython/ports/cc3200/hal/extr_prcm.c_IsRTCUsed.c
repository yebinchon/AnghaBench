
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int MAP_PRCMHIBRegRead (int ) ;
 int RTC_MSEC_U32_REG_ADDR ;

__attribute__((used)) static tBoolean IsRTCUsed(void)
{
  return (MAP_PRCMHIBRegRead(RTC_MSEC_U32_REG_ADDR) & (1 << 31)) ? 1 : 0;
}
