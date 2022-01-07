
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tBoolean ;


 scalar_t__ IS_RTC_USED () ;

tBoolean PRCMRTCInUseGet(void)
{
        return IS_RTC_USED()? 1 : 0;
}
