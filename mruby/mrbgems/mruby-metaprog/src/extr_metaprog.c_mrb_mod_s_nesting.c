
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct RProc {struct RProc* upper; } ;
struct RClass {int dummy; } ;
typedef int mrb_value ;
struct TYPE_9__ {TYPE_2__* c; } ;
typedef TYPE_3__ mrb_state ;
struct TYPE_8__ {TYPE_1__* ci; } ;
struct TYPE_7__ {struct RProc* proc; } ;


 int MRB_PROC_CFUNC_P (struct RProc*) ;
 scalar_t__ MRB_PROC_SCOPE_P (struct RProc*) ;
 struct RClass* MRB_PROC_TARGET_CLASS (struct RProc*) ;
 int mrb_ary_new (TYPE_3__*) ;
 int mrb_ary_push (TYPE_3__*,int ,int ) ;
 int mrb_assert (int) ;
 int mrb_obj_value (struct RClass*) ;

__attribute__((used)) static mrb_value
mrb_mod_s_nesting(mrb_state *mrb, mrb_value mod)
{
  struct RProc *proc;
  mrb_value ary;
  struct RClass *c = ((void*)0);

  ary = mrb_ary_new(mrb);
  proc = mrb->c->ci[-1].proc;
  mrb_assert(!MRB_PROC_CFUNC_P(proc));
  while (proc) {
    if (MRB_PROC_SCOPE_P(proc)) {
      struct RClass *c2 = MRB_PROC_TARGET_CLASS(proc);

      if (c2 != c) {
        c = c2;
        mrb_ary_push(mrb, ary, mrb_obj_value(c));
      }
    }
    proc = proc->upper;
  }
  return ary;
}
