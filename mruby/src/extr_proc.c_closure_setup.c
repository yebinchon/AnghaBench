
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_15__ {struct REnv* env; } ;
struct TYPE_14__ {TYPE_2__* irep; } ;
struct RProc {int flags; TYPE_4__ e; TYPE_3__ body; struct RProc* upper; } ;
struct REnv {int mid; struct RClass* c; } ;
struct RClass {int dummy; } ;
struct RBasic {int dummy; } ;
struct TYPE_16__ {TYPE_1__* c; } ;
typedef TYPE_5__ mrb_state ;
struct TYPE_17__ {struct REnv* env; } ;
typedef TYPE_6__ mrb_callinfo ;
struct TYPE_13__ {int nlocals; } ;
struct TYPE_12__ {TYPE_6__* ci; } ;
struct TYPE_11__ {int mid; int * cxt; } ;


 TYPE_10__* MRB_PROC_ENV (struct RProc*) ;
 int MRB_PROC_ENVSET ;
 scalar_t__ MRB_PROC_ENV_P (struct RProc*) ;
 struct RClass* MRB_PROC_TARGET_CLASS (struct RProc*) ;
 struct REnv* env_new (TYPE_5__*,int ) ;
 int mrb_field_write_barrier (TYPE_5__*,struct RBasic*,struct RBasic*) ;

__attribute__((used)) static void
closure_setup(mrb_state *mrb, struct RProc *p)
{
  mrb_callinfo *ci = mrb->c->ci;
  struct RProc *up = p->upper;
  struct REnv *e = ((void*)0);

  if (ci && ci->env) {
    e = ci->env;
  }
  else if (up) {
    struct RClass *tc = MRB_PROC_TARGET_CLASS(p);

    e = env_new(mrb, up->body.irep->nlocals);
    ci->env = e;
    if (tc) {
      e->c = tc;
      mrb_field_write_barrier(mrb, (struct RBasic*)e, (struct RBasic*)tc);
    }
    if (MRB_PROC_ENV_P(up) && MRB_PROC_ENV(up)->cxt == ((void*)0)) {
      e->mid = MRB_PROC_ENV(up)->mid;
    }
  }
  if (e) {
    p->e.env = e;
    p->flags |= MRB_PROC_ENVSET;
    mrb_field_write_barrier(mrb, (struct RBasic*)p, (struct RBasic*)e);
  }
}
