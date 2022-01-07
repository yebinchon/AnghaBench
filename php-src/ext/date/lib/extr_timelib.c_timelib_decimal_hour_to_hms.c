
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ceil (double) ;
 int floor (double) ;

void timelib_decimal_hour_to_hms(double h, int *hour, int *min, int *sec)
{
 if (h > 0) {
  *hour = floor(h);
  *min = floor((h - *hour) * 60);
  *sec = (h - *hour - ((float) *min / 60)) * 3600;
 } else {
  *hour = ceil(h);
  *min = 0 - ceil((h - *hour) * 60);
  *sec = 0 - (h - *hour - ((float) *min / -60)) * 3600;
 }
}
