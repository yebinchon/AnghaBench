
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct RBasic {int dummy; } ;
typedef int mrb_value ;
struct TYPE_6__ {int arena_idx; int out_of_memory; struct RBasic** arena; } ;
struct TYPE_7__ {scalar_t__ exc; TYPE_1__ gc; } ;
typedef TYPE_2__ mrb_state ;


 int exc_debug_info (TYPE_2__*,scalar_t__) ;
 int mrb_frozen_p (scalar_t__) ;
 int mrb_keep_backtrace (TYPE_2__*,int ) ;
 scalar_t__ mrb_nil_p (int ) ;
 scalar_t__ mrb_obj_ptr (int ) ;

void
mrb_exc_set(mrb_state *mrb, mrb_value exc)
{
  if (mrb_nil_p(exc)) {
    mrb->exc = 0;
  }
  else {
    mrb->exc = mrb_obj_ptr(exc);
    if (mrb->gc.arena_idx > 0 &&
        (struct RBasic*)mrb->exc == mrb->gc.arena[mrb->gc.arena_idx-1]) {
      mrb->gc.arena_idx--;
    }
    if (!mrb->gc.out_of_memory && !mrb_frozen_p(mrb->exc)) {
      exc_debug_info(mrb, mrb->exc);
      mrb_keep_backtrace(mrb, exc);
    }
  }
}
