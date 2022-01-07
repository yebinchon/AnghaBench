
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mrb_context {scalar_t__ status; int eidx; struct mrb_context* prev; scalar_t__ fib; scalar_t__* ensure; TYPE_1__* ci; TYPE_1__* cibase; } ;
struct RBasic {int dummy; } ;
typedef int mrb_state ;
struct TYPE_2__ {scalar_t__ target_class; scalar_t__ proc; scalar_t__ env; } ;
typedef TYPE_1__ mrb_callinfo ;


 scalar_t__ MRB_FIBER_TERMINATED ;
 int mark_context_stack (int *,struct mrb_context*) ;
 int mrb_gc_mark (int *,struct RBasic*) ;

__attribute__((used)) static void
mark_context(mrb_state *mrb, struct mrb_context *c)
{
  int i;
  mrb_callinfo *ci;

 start:
  if (c->status == MRB_FIBER_TERMINATED) return;


  mark_context_stack(mrb, c);


  if (c->cibase) {
    for (ci = c->cibase; ci <= c->ci; ci++) {
      mrb_gc_mark(mrb, (struct RBasic*)ci->env);
      mrb_gc_mark(mrb, (struct RBasic*)ci->proc);
      mrb_gc_mark(mrb, (struct RBasic*)ci->target_class);
    }
  }

  for (i=0; i<c->eidx; i++) {
    mrb_gc_mark(mrb, (struct RBasic*)c->ensure[i]);
  }

  mrb_gc_mark(mrb, (struct RBasic*)c->fib);
  if (c->prev) {
    c = c->prev;
    goto start;
  }
}
