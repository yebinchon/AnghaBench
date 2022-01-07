
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;


 long long NSEC_PER_SEC ;
 long long TIMER_SECS ;
 long long alarmcount ;
 int clock_gettime (int ,struct timespec*) ;
 int clock_id ;
 long long max_latency_ns ;
 int start_time ;
 int timer_fired_early ;
 long long timespec_sub (int ,struct timespec) ;

void sigalarm(int signo)
{
 long long delta_ns;
 struct timespec ts;

 clock_gettime(clock_id, &ts);
 alarmcount++;

 delta_ns = timespec_sub(start_time, ts);
 delta_ns -= NSEC_PER_SEC * TIMER_SECS * alarmcount;

 if (delta_ns < 0)
  timer_fired_early = 1;

 if (delta_ns > max_latency_ns)
  max_latency_ns = delta_ns;
}
