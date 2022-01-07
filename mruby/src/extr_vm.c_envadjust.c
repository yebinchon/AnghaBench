
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct REnv {int * stack; } ;
typedef int ptrdiff_t ;
typedef int mrb_value ;
struct TYPE_6__ {TYPE_1__* c; } ;
typedef TYPE_2__ mrb_state ;
struct TYPE_7__ {int * stackent; scalar_t__ proc; struct REnv* env; } ;
typedef TYPE_3__ mrb_callinfo ;
struct TYPE_5__ {TYPE_3__* ci; TYPE_3__* cibase; } ;


 scalar_t__ MRB_ENV_STACK_SHARED_P (struct REnv*) ;
 struct REnv* MRB_PROC_ENV (scalar_t__) ;
 scalar_t__ MRB_PROC_ENV_P (scalar_t__) ;

__attribute__((used)) static inline void
envadjust(mrb_state *mrb, mrb_value *oldbase, mrb_value *newbase, size_t oldsize)
{
  mrb_callinfo *ci = mrb->c->cibase;

  if (newbase == oldbase) return;
  while (ci <= mrb->c->ci) {
    struct REnv *e = ci->env;
    mrb_value *st;

    if (e && MRB_ENV_STACK_SHARED_P(e) &&
        (st = e->stack) && oldbase <= st && st < oldbase+oldsize) {
      ptrdiff_t off = e->stack - oldbase;

      e->stack = newbase + off;
    }

    if (ci->proc && MRB_PROC_ENV_P(ci->proc) && ci->env != MRB_PROC_ENV(ci->proc)) {
      e = MRB_PROC_ENV(ci->proc);

      if (e && MRB_ENV_STACK_SHARED_P(e) &&
          (st = e->stack) && oldbase <= st && st < oldbase+oldsize) {
        ptrdiff_t off = e->stack - oldbase;

        e->stack = newbase + off;
      }
    }

    ci->stackent = newbase + (ci->stackent - oldbase);
    ci++;
  }
}
