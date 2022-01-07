
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ RTC_SR ;
 scalar_t__ RTC_SR_TCE ;
 scalar_t__ RTC_TPR ;
 unsigned long RTC_TSR ;

void rtc_set(unsigned long t)
{
 RTC_SR = 0;
 RTC_TPR = 0;
 RTC_TSR = t;
 RTC_SR = RTC_SR_TCE;
}
