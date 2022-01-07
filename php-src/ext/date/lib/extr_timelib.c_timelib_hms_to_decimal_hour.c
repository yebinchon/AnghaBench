
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void timelib_hms_to_decimal_hour(int hour, int min, int sec, double *h)
{
 if (hour > 0) {
  *h = ((double)hour + (double)min / 60 + (double)sec / 3600);
 } else {
  *h = ((double)hour - (double)min / 60 - (double)sec / 3600);
 }
}
