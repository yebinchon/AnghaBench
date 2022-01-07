
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct mrb_time {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;


 int mrb_to_time_t (int *,int ,int *) ;
 struct mrb_time* time_alloc_time (int *,int ,int ,int) ;

__attribute__((used)) static struct mrb_time*
time_alloc(mrb_state *mrb, mrb_value sec, mrb_value usec, enum mrb_timezone timezone)
{
  time_t tsec, tusec;

  tsec = mrb_to_time_t(mrb, sec, &tusec);
  tusec += mrb_to_time_t(mrb, usec, ((void*)0));

  return time_alloc_time(mrb, tsec, tusec, timezone);
}
