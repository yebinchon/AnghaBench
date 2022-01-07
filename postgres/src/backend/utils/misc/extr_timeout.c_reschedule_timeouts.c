
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetCurrentTimestamp () ;
 int all_timeouts_initialized ;
 int disable_alarm () ;
 scalar_t__ num_active_timeouts ;
 int schedule_alarm (int ) ;

void
reschedule_timeouts(void)
{

 if (!all_timeouts_initialized)
  return;


 disable_alarm();


 if (num_active_timeouts > 0)
  schedule_alarm(GetCurrentTimestamp());
}
