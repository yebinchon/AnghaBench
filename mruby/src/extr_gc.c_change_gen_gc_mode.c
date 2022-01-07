
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int mrb_state ;
struct TYPE_6__ {scalar_t__ state; int majorgc_old_threshold; int live_after_mark; scalar_t__ generational; void* full; scalar_t__ iterating; scalar_t__ disabled; } ;
typedef TYPE_1__ mrb_gc ;
typedef scalar_t__ mrb_bool ;


 int E_RUNTIME_ERROR ;
 void* FALSE ;
 int MAJOR_GC_INC_RATIO ;
 scalar_t__ MRB_GC_STATE_ROOT ;
 int clear_all_old (int *,TYPE_1__*) ;
 int incremental_gc_until (int *,TYPE_1__*,scalar_t__) ;
 scalar_t__ is_generational (TYPE_1__*) ;
 int mrb_assert (int) ;
 int mrb_raise (int *,int ,char*) ;

__attribute__((used)) static void
change_gen_gc_mode(mrb_state *mrb, mrb_gc *gc, mrb_bool enable)
{
  if (gc->disabled || gc->iterating) {
    mrb_raise(mrb, E_RUNTIME_ERROR, "generational mode changed when GC disabled");
    return;
  }
  if (is_generational(gc) && !enable) {
    clear_all_old(mrb, gc);
    mrb_assert(gc->state == MRB_GC_STATE_ROOT);
    gc->full = FALSE;
  }
  else if (!is_generational(gc) && enable) {
    incremental_gc_until(mrb, gc, MRB_GC_STATE_ROOT);
    gc->majorgc_old_threshold = gc->live_after_mark/100 * MAJOR_GC_INC_RATIO;
    gc->full = FALSE;
  }
  gc->generational = enable;
}
