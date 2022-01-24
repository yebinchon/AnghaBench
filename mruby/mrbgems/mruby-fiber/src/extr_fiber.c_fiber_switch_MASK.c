#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_12__ ;

/* Type definitions */
struct mrb_context {int status; TYPE_2__* ci; int /*<<< orphan*/  vmexec; int /*<<< orphan*/ * stack; TYPE_1__* cibase; struct mrb_context* prev; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_16__ {struct mrb_context* c; struct mrb_context* root_c; } ;
typedef  TYPE_3__ mrb_state ;
typedef  int mrb_int ;
typedef  scalar_t__ mrb_bool ;
typedef  enum mrb_fiber_state { ____Placeholder_mrb_fiber_state } mrb_fiber_state ;
struct TYPE_15__ {int /*<<< orphan*/  pc; int /*<<< orphan*/  proc; } ;
struct TYPE_14__ {int argc; } ;
struct TYPE_13__ {int /*<<< orphan*/ * stack; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_FIBER_ERROR ; 
 int /*<<< orphan*/  FUNC0 (struct mrb_context*) ; 
 int MRB_FIBER_CREATED ; 
#define  MRB_FIBER_RESUMED 131 
#define  MRB_FIBER_RUNNING 130 
#define  MRB_FIBER_TERMINATED 129 
#define  MRB_FIBER_TRANSFERRED 128 
 TYPE_12__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 struct mrb_context* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,struct mrb_context*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,struct mrb_context*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self, mrb_int len, const mrb_value *a, mrb_bool resume, mrb_bool vmexec)
{
  struct mrb_context *c = FUNC2(mrb, self);
  struct mrb_context *old_c = mrb->c;
  enum mrb_fiber_state status;
  mrb_value value;

  FUNC3(mrb, c);
  status = c->status;
  switch (status) {
  case MRB_FIBER_TRANSFERRED:
    if (resume) {
      FUNC6(mrb, E_FIBER_ERROR, "resuming transferred fiber");
    }
    break;
  case MRB_FIBER_RUNNING:
  case MRB_FIBER_RESUMED:
    FUNC6(mrb, E_FIBER_ERROR, "double resume");
    break;
  case MRB_FIBER_TERMINATED:
    FUNC6(mrb, E_FIBER_ERROR, "resuming dead fiber");
    break;
  default:
    break;
  }
  old_c->status = resume ? MRB_FIBER_RESUMED : MRB_FIBER_TRANSFERRED;
  c->prev = resume ? mrb->c : (c->prev ? c->prev : mrb->root_c);
  FUNC5(mrb, c);
  if (status == MRB_FIBER_CREATED) {
    mrb_value *b, *e;

    if (!c->ci->proc) {
      FUNC6(mrb, E_FIBER_ERROR, "double resume (current)");
    }
    FUNC7(mrb, len+2); /* for receiver and (optional) block */
    b = c->stack+1;
    e = b + len;
    while (b<e) {
      *b++ = *a++;
    }
    c->cibase->argc = (int)len;
    value = c->stack[0] = FUNC1(c->ci->proc)->stack[0];
  }
  else {
    value = FUNC4(mrb, a, len);
  }

  if (vmexec) {
    c->vmexec = TRUE;
    value = FUNC8(mrb, c->ci[-1].proc, c->ci->pc);
    mrb->c = old_c;
  }
  else {
    FUNC0(c);
  }
  return value;
}