
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long RTC_TSR ;

unsigned long rtc_get(void)
{
 return RTC_TSR;
}
