
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RRange {int dummy; } ;
typedef int mrb_state ;


 int RANGE_BEG (struct RRange*) ;
 int RANGE_END (struct RRange*) ;
 scalar_t__ RANGE_INITIALIZED_P (struct RRange*) ;
 int mrb_gc_mark_value (int *,int ) ;

void
mrb_gc_mark_range(mrb_state *mrb, struct RRange *r)
{
  if (RANGE_INITIALIZED_P(r)) {
    mrb_gc_mark_value(mrb, RANGE_BEG(r));
    mrb_gc_mark_value(mrb, RANGE_END(r));
  }
}
