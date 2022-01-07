
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct mrb_context {int * stack; TYPE_2__* ci; TYPE_2__* cibase; TYPE_2__* ciend; int * stbase; int * stend; } ;
typedef int mrb_value ;
struct TYPE_5__ {int object_class; struct mrb_context* c; } ;
typedef TYPE_1__ mrb_state ;
struct TYPE_6__ {int * stackent; int target_class; } ;
typedef TYPE_2__ mrb_callinfo ;


 int CALLINFO_INIT_SIZE ;
 int STACK_INIT_SIZE ;
 scalar_t__ mrb_calloc (TYPE_1__*,int,int) ;

__attribute__((used)) static void
stack_init(mrb_state *mrb)
{
  struct mrb_context *c = mrb->c;


  c->stbase = (mrb_value *)mrb_calloc(mrb, STACK_INIT_SIZE, sizeof(mrb_value));
  c->stend = c->stbase + STACK_INIT_SIZE;
  c->stack = c->stbase;


  c->cibase = (mrb_callinfo *)mrb_calloc(mrb, CALLINFO_INIT_SIZE, sizeof(mrb_callinfo));
  c->ciend = c->cibase + CALLINFO_INIT_SIZE;
  c->ci = c->cibase;
  c->ci->target_class = mrb->object_class;
  c->ci->stackent = c->stack;
}
