
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;
struct timespec {scalar_t__ tv_sec; int tv_nsec; } ;
struct mrb_time {int timezone; scalar_t__ usec; scalar_t__ sec; int member_0; } ;
typedef int mrb_state ;


 int E_RUNTIME_ERROR ;
 int MRB_TIMEZONE_LOCAL ;
 int TIME_UTC ;
 int TRUE ;
 int gettimeofday (struct timeval*,int *) ;
 scalar_t__ mrb_malloc (int *,int) ;
 int mrb_raise (int *,int ,char*) ;
 scalar_t__ time (int *) ;
 int time_update_datetime (int *,struct mrb_time*,int ) ;
 scalar_t__ timespec_get (struct timespec*,int ) ;

__attribute__((used)) static struct mrb_time*
current_mrb_time(mrb_state *mrb)
{
  struct mrb_time tmzero = {0};
  struct mrb_time *tm;
  time_t sec, usec;
  {
    struct timeval tv;

    gettimeofday(&tv, ((void*)0));
    sec = tv.tv_sec;
    usec = tv.tv_usec;
  }

  tm = (struct mrb_time *)mrb_malloc(mrb, sizeof(*tm));
  *tm = tmzero;
  tm->sec = sec; tm->usec = usec;
  tm->timezone = MRB_TIMEZONE_LOCAL;
  time_update_datetime(mrb, tm, TRUE);

  return tm;
}
