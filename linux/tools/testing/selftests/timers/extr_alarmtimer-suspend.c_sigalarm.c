
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; int tv_sec; } ;


 long long NSEC_PER_SEC ;
 long long SUSPEND_SECS ;
 long long UNREASONABLE_LAT ;
 int alarm_clock_id ;
 long long alarmcount ;
 int clock_gettime (int ,struct timespec*) ;
 int final_ret ;
 int printf (char*,...) ;
 int start_time ;
 long long timespec_sub (int ,struct timespec) ;

void sigalarm(int signo)
{
 long long delta_ns;
 struct timespec ts;

 clock_gettime(alarm_clock_id, &ts);
 alarmcount++;

 delta_ns = timespec_sub(start_time, ts);
 delta_ns -= NSEC_PER_SEC * SUSPEND_SECS * alarmcount;

 printf("ALARM(%i): %ld:%ld latency: %lld ns ", alarmcount, ts.tv_sec,
       ts.tv_nsec, delta_ns);

 if (delta_ns > UNREASONABLE_LAT) {
  printf("[FAIL]\n");
  final_ret = -1;
 } else
  printf("[OK]\n");

}
