
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PRCMHIBRegRead (int ) ;
 int PRCMHIBRegWrite (int ,unsigned int) ;
 int RTC_MSEC_U32_REG_ADDR ;

__attribute__((used)) static void RTCUseSet(void)
{
  unsigned int uiRegValue;

  uiRegValue = MAP_PRCMHIBRegRead(RTC_MSEC_U32_REG_ADDR) | (1 << 31);

  PRCMHIBRegWrite(RTC_MSEC_U32_REG_ADDR, uiRegValue);
}
