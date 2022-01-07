
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 long long MILLION ;
 long long diff_timespec (struct timespec,struct timespec) ;
 int get_monotonic_and_raw (struct timespec*,struct timespec*) ;
 int sleep (int) ;

long long get_ppm_drift(void)
{
 struct timespec mon_start, raw_start, mon_end, raw_end;
 long long delta1, delta2, eppm;

 get_monotonic_and_raw(&mon_start, &raw_start);

 sleep(15);

 get_monotonic_and_raw(&mon_end, &raw_end);

 delta1 = diff_timespec(mon_start, mon_end);
 delta2 = diff_timespec(raw_start, raw_end);

 eppm = (delta1*MILLION)/delta2 - MILLION;

 return eppm;
}
