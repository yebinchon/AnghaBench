
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_t ;


 int TIMER_SECS ;
 int alarmcount ;
 int check_timer_latency (int,int const) ;
 int setup_timer (int,int,int const,int *) ;
 int sleep (int) ;
 int timer_delete (int ) ;

int do_timer(int clock_id, int flags)
{
 timer_t tm1;
 const int interval = TIMER_SECS;
 int err;

 err = setup_timer(clock_id, flags, interval, &tm1);

 if (err)
  return err == 1 ? 0 : err;

 while (alarmcount < 5)
  sleep(1);

 timer_delete(tm1);
 return check_timer_latency(flags, interval);
}
