#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {TYPE_6__* irep; } ;
struct RProc {int /*<<< orphan*/  c; struct RProc* upper; TYPE_3__ body; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_17__ {TYPE_2__* c; } ;
typedef  TYPE_5__ mrb_state ;
struct TYPE_18__ {size_t nlocals; TYPE_4__* lv; } ;
typedef  TYPE_6__ mrb_irep ;
struct TYPE_16__ {int /*<<< orphan*/  name; } ;
struct TYPE_14__ {TYPE_1__* ci; } ;
struct TYPE_13__ {struct RProc* proc; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC1 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self)
{
  struct RProc *proc;
  mrb_irep *irep;
  mrb_value vars;
  size_t i;

  proc = mrb->c->ci[-1].proc;

  if (FUNC0(proc)) {
    return FUNC2(mrb);
  }
  vars = FUNC4(mrb);
  while (proc) {
    if (FUNC0(proc)) break;
    irep = proc->body.irep;
    if (!irep->lv) break;
    for (i = 0; i + 1 < irep->nlocals; ++i) {
      if (irep->lv[i].name) {
        mrb_sym sym = irep->lv[i].name;
        const char *name = FUNC6(mrb, sym);
        switch (name[0]) {
        case '*': case '&':
          break;
        default:
          FUNC5(mrb, vars, FUNC7(sym), FUNC8());
          break;
        }
      }
    }
    if (!FUNC1(proc)) break;
    proc = proc->upper;
    //if (MRB_PROC_SCOPE_P(proc)) break;
    if (!proc->c) break;
  }

  return FUNC3(mrb, vars);
}