
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timer_t ;
typedef int timeout ;
struct timeval {int tv_sec; } ;


 scalar_t__ EINTR ;
 int check_alarmcount (int,int const) ;
 int check_timer_latency (int,int const) ;
 scalar_t__ errno ;
 int memset (struct timeval*,int ,int) ;
 int select (int ,int *,int *,int *,struct timeval*) ;
 int setup_timer (int,int,int const,int *) ;
 int timer_delete (int ) ;

int do_timer_oneshot(int clock_id, int flags)
{
 timer_t tm1;
 const int interval = 0;
 struct timeval timeout;
 int err;

 err = setup_timer(clock_id, flags, interval, &tm1);

 if (err)
  return err == 1 ? 0 : err;

 memset(&timeout, 0, sizeof(timeout));
 timeout.tv_sec = 5;
 do {
  err = select(0, ((void*)0), ((void*)0), ((void*)0), &timeout);
 } while (err == -1 && errno == EINTR);

 timer_delete(tm1);
 err = check_timer_latency(flags, interval);
 err |= check_alarmcount(flags, interval);
 return err;
}
