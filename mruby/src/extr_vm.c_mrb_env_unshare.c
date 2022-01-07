
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct REnv {int * stack; TYPE_1__* cxt; } ;
struct RBasic {int dummy; } ;
typedef int mrb_value ;
struct TYPE_9__ {TYPE_1__* c; } ;
typedef TYPE_3__ mrb_state ;
struct TYPE_8__ {struct REnv* env; } ;
struct TYPE_7__ {TYPE_2__* cibase; } ;


 int MRB_ENV_STACK_LEN (struct REnv*) ;
 int MRB_ENV_STACK_SHARED_P (struct REnv*) ;
 int MRB_ENV_UNSHARE_STACK (struct REnv*) ;
 scalar_t__ mrb_malloc (TYPE_3__*,int) ;
 int mrb_write_barrier (TYPE_3__*,struct RBasic*) ;
 int stack_copy (int *,int *,size_t) ;

void
mrb_env_unshare(mrb_state *mrb, struct REnv *e)
{
  if (e == ((void*)0)) return;
  else {
    size_t len = (size_t)MRB_ENV_STACK_LEN(e);
    mrb_value *p;

    if (!MRB_ENV_STACK_SHARED_P(e)) return;
    if (e->cxt != mrb->c) return;
    if (e == mrb->c->cibase->env) return;
    p = (mrb_value *)mrb_malloc(mrb, sizeof(mrb_value)*len);
    if (len > 0) {
      stack_copy(p, e->stack, len);
    }
    e->stack = p;
    MRB_ENV_UNSHARE_STACK(e);
    mrb_write_barrier(mrb, (struct RBasic *)e);
  }
}
