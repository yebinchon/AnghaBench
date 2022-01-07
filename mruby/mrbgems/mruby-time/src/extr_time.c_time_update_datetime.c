
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct mrb_time {scalar_t__ timezone; struct tm datetime; int sec; } ;
typedef int mrb_state ;
typedef int mrb_sec ;


 int E_ARGUMENT_ERROR ;
 scalar_t__ MRB_TIMEZONE_UTC ;
 struct tm* gmtime_r (int *,struct tm*) ;
 struct tm* localtime_r (int *,struct tm*) ;
 int mrb_free (int *,struct mrb_time*) ;
 int mrb_raisef (int *,int ,char*,int ) ;
 int mrb_sec_value (int *,int ) ;

__attribute__((used)) static struct mrb_time*
time_update_datetime(mrb_state *mrb, struct mrb_time *self, int dealloc)
{
  struct tm *aid;
  time_t t = self->sec;

  if (self->timezone == MRB_TIMEZONE_UTC) {
    aid = gmtime_r(&t, &self->datetime);
  }
  else {
    aid = localtime_r(&t, &self->datetime);
  }
  if (!aid) {
    mrb_sec sec = (mrb_sec)t;

    if (dealloc) mrb_free(mrb, self);
    mrb_raisef(mrb, E_ARGUMENT_ERROR, "%v out of Time range", mrb_sec_value(mrb, sec));

    return ((void*)0);
  }




  return self;
}
