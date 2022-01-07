
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int timer_t ;
struct TYPE_5__ {scalar_t__ sival_int; } ;
struct sigevent {int sigev_signo; TYPE_1__ sigev_value; int sigev_notify; } ;
struct sigaction {int sa_handler; scalar_t__ sa_flags; int sa_mask; } ;
struct TYPE_6__ {int tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_7__ {int tv_sec; int tv_nsec; } ;
struct itimerspec {TYPE_2__ it_interval; TYPE_3__ it_value; } ;
typedef int se ;


 scalar_t__ CLOCK_BOOTTIME_ALARM ;
 scalar_t__ CLOCK_REALTIME_ALARM ;
 int SIGEV_SIGNAL ;
 int SIGRTMAX ;
 int SUSPEND_SECS ;
 int TIMER_ABSTIME ;
 scalar_t__ alarm_clock_id ;
 int alarmcount ;
 int clock_gettime (scalar_t__,TYPE_3__*) ;
 char* clockstring (scalar_t__) ;
 scalar_t__ final_ret ;
 int ksft_exit_fail () ;
 int ksft_exit_pass () ;
 int memset (struct sigevent*,int ,int) ;
 int printf (char*,...) ;
 int sigaction (int,struct sigaction*,int *) ;
 int sigalarm ;
 int sigfillset (int *) ;
 int sleep (int) ;
 TYPE_3__ start_time ;
 int system (char*) ;
 int timer_create (scalar_t__,struct sigevent*,int *) ;
 int timer_delete (int ) ;
 int timer_settime (int ,int ,struct itimerspec*,struct itimerspec*) ;

int main(void)
{
 timer_t tm1;
 struct itimerspec its1, its2;
 struct sigevent se;
 struct sigaction act;
 int signum = SIGRTMAX;


 sigfillset(&act.sa_mask);
 act.sa_flags = 0;
 act.sa_handler = sigalarm;
 sigaction(signum, &act, ((void*)0));


 memset(&se, 0, sizeof(se));
 se.sigev_notify = SIGEV_SIGNAL;
 se.sigev_signo = signum;
 se.sigev_value.sival_int = 0;

 for (alarm_clock_id = CLOCK_REALTIME_ALARM;
   alarm_clock_id <= CLOCK_BOOTTIME_ALARM;
   alarm_clock_id++) {

  alarmcount = 0;
  if (timer_create(alarm_clock_id, &se, &tm1) == -1) {
   printf("timer_create failed, %s unsupported?\n",
     clockstring(alarm_clock_id));
   break;
  }

  clock_gettime(alarm_clock_id, &start_time);
  printf("Start time (%s): %ld:%ld\n", clockstring(alarm_clock_id),
    start_time.tv_sec, start_time.tv_nsec);
  printf("Setting alarm for every %i seconds\n", SUSPEND_SECS);
  its1.it_value = start_time;
  its1.it_value.tv_sec += SUSPEND_SECS;
  its1.it_interval.tv_sec = SUSPEND_SECS;
  its1.it_interval.tv_nsec = 0;

  timer_settime(tm1, TIMER_ABSTIME, &its1, &its2);

  while (alarmcount < 5)
   sleep(1);

  printf("Starting suspend loops\n");
  while (alarmcount < 10) {
   int ret;

   sleep(3);
   ret = system("echo mem > /sys/power/state");
   if (ret)
    break;
  }
  timer_delete(tm1);
 }
 if (final_ret)
  return ksft_exit_fail();
 return ksft_exit_pass();
}
