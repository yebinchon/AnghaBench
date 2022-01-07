
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
typedef int mrb_state ;
typedef enum mrb_timezone { ____Placeholder_mrb_timezone } mrb_timezone ;


 int mrb_time_wrap (int *,struct RClass*,int ) ;
 int time_alloc_time (int *,int ,int ,int) ;

__attribute__((used)) static mrb_value
mrb_time_make_time(mrb_state *mrb, struct RClass *c, time_t sec, time_t usec, enum mrb_timezone timezone)
{
  return mrb_time_wrap(mrb, c, time_alloc_time(mrb, sec, usec, timezone));
}
