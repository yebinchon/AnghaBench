
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 int MAP_PRCMHIBRegRead (int ) ;
 int PRCMClearSpecialBit (unsigned char) ;
 int RTC_MSEC_U32_REG_ADDR ;

tBoolean PRCMGetSpecialBit(unsigned char bit)
{
    tBoolean value = (MAP_PRCMHIBRegRead(RTC_MSEC_U32_REG_ADDR) & (1 << bit)) ? 1 : 0;

    PRCMClearSpecialBit(bit);
    return value;
}
