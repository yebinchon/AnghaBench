
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAP_PRCMHIBRegRead (int ) ;
 int MAP_PRCMHIBRegWrite (int ,unsigned int) ;
 int RTC_MSEC_U32_REG_ADDR ;

__attribute__((used)) static void RTCU32MSecRegWrite(unsigned int u32Msec)
{
   unsigned int uiRegValue;


   uiRegValue = MAP_PRCMHIBRegRead(RTC_MSEC_U32_REG_ADDR) & (~(0x03FF << 16));


   MAP_PRCMHIBRegWrite(RTC_MSEC_U32_REG_ADDR, uiRegValue | ((u32Msec & 0x03FF) << 16));
}
