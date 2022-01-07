
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_4__ {int step_ratio; scalar_t__ state; scalar_t__ live; scalar_t__ threshold; } ;
typedef TYPE_1__ mrb_gc ;


 int GC_STEP_SIZE ;
 scalar_t__ MRB_GC_STATE_ROOT ;
 scalar_t__ incremental_gc (int *,TYPE_1__*,size_t) ;

__attribute__((used)) static void
incremental_gc_step(mrb_state *mrb, mrb_gc *gc)
{
  size_t limit = 0, result = 0;
  limit = (GC_STEP_SIZE/100) * gc->step_ratio;
  while (result < limit) {
    result += incremental_gc(mrb, gc, limit);
    if (gc->state == MRB_GC_STATE_ROOT)
      break;
  }

  gc->threshold = gc->live + GC_STEP_SIZE;
}
