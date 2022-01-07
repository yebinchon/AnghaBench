
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct itimerval {int dummy; } ;
struct TYPE_2__ {int active; int indicator; } ;


 int FATAL ;
 int ITIMER_REAL ;
 int MAX_TIMEOUTS ;
 int MemSet (struct itimerval*,int ,int) ;
 TYPE_1__* all_timeouts ;
 int disable_alarm () ;
 int elog (int ,char*) ;
 scalar_t__ num_active_timeouts ;
 scalar_t__ setitimer (int ,struct itimerval*,int *) ;

void
disable_all_timeouts(bool keep_indicators)
{
 int i;

 disable_alarm();






 if (num_active_timeouts > 0)
 {
  struct itimerval timeval;

  MemSet(&timeval, 0, sizeof(struct itimerval));
  if (setitimer(ITIMER_REAL, &timeval, ((void*)0)) != 0)
   elog(FATAL, "could not disable SIGALRM timer: %m");
 }

 num_active_timeouts = 0;

 for (i = 0; i < MAX_TIMEOUTS; i++)
 {
  all_timeouts[i].active = 0;
  if (!keep_indicators)
   all_timeouts[i].indicator = 0;
 }
}
