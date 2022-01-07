
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int QueryPerformanceFrequency (int *) ;
 int perf_freq ;
 int timeBeginPeriod (int) ;

void mp_raw_time_init(void)
{
    QueryPerformanceFrequency(&perf_freq);

    timeBeginPeriod(1);

}
