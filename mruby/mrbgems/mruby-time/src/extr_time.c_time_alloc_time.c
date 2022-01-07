
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* time_t ;
struct mrb_time {long sec; long usec; int timezone; } ;
typedef int mrb_state ;
typedef enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;


 scalar_t__ NDIV (long,int) ;
 int TRUE ;
 scalar_t__ mrb_malloc (int *,int) ;
 int time_update_datetime (int *,struct mrb_time*,int ) ;

__attribute__((used)) static struct mrb_time*
time_alloc_time(mrb_state *mrb, time_t sec, time_t usec, enum mrb_timezone timezone)
{
  struct mrb_time *tm;

  tm = (struct mrb_time *)mrb_malloc(mrb, sizeof(struct mrb_time));
  tm->sec = sec;
  tm->usec = usec;
  if (tm->usec < 0) {
    long sec2 = (long)NDIV(tm->usec,1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  else if (tm->usec >= 1000000) {
    long sec2 = (long)(tm->usec / 1000000);
    tm->usec -= sec2 * 1000000;
    tm->sec += sec2;
  }
  tm->timezone = timezone;
  time_update_datetime(mrb, tm, TRUE);

  return tm;
}
