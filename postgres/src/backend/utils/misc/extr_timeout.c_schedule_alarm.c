
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long tv_sec; int tv_usec; } ;
struct itimerval {TYPE_1__ it_value; } ;
typedef int TimestampTz ;
struct TYPE_4__ {int fin_time; } ;


 int FATAL ;
 int ITIMER_REAL ;
 int MemSet (struct itimerval*,int ,int) ;
 int TimestampDifference (int ,int ,long*,int*) ;
 TYPE_2__** active_timeouts ;
 int elog (int ,char*) ;
 int enable_alarm () ;
 scalar_t__ num_active_timeouts ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;

__attribute__((used)) static void
schedule_alarm(TimestampTz now)
{
 if (num_active_timeouts > 0)
 {
  struct itimerval timeval;
  long secs;
  int usecs;

  MemSet(&timeval, 0, sizeof(struct itimerval));


  TimestampDifference(now, active_timeouts[0]->fin_time,
       &secs, &usecs);





  if (secs == 0 && usecs == 0)
   usecs = 1;

  timeval.it_value.tv_sec = secs;
  timeval.it_value.tv_usec = usecs;
  enable_alarm();


  if (setitimer(ITIMER_REAL, &timeval, ((void*)0)) != 0)
   elog(FATAL, "could not enable SIGALRM timer: %m");
 }
}
