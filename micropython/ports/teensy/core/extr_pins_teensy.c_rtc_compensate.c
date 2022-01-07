
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int RTC_TCR ;

void rtc_compensate(int adjust)
{
 uint32_t comp, interval, tcr;






 if (adjust >= 0) {
  comp = adjust;
  interval = 256;
  while (1) {
   tcr = comp * interval;
   if (tcr < 128*256) break;
   if (--interval == 1) break;
  }
  tcr = tcr >> 8;
 } else {
  comp = -adjust;
  interval = 256;
  while (1) {
   tcr = comp * interval;
   if (tcr < 129*256) break;
   if (--interval == 1) break;
  }
  tcr = tcr >> 8;
  tcr = 256 - tcr;
 }
 RTC_TCR = ((interval - 1) << 8) | tcr;
}
