#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RProc {struct RProc* upper; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_9__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
struct TYPE_8__ {TYPE_1__* ci; } ;
struct TYPE_7__ {struct RProc* proc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RProc*) ; 
 scalar_t__ FUNC1 (struct RProc*) ; 
 struct RClass* FUNC2 (struct RProc*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct RClass*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value mod)
{
  struct RProc *proc;
  mrb_value ary;
  struct RClass *c = NULL;

  ary = FUNC3(mrb);
  proc = mrb->c->ci[-1].proc;   /* callee proc */
  FUNC5(!FUNC0(proc));
  while (proc) {
    if (FUNC1(proc)) {
      struct RClass *c2 = FUNC2(proc);

      if (c2 != c) {
        c = c2;
        FUNC4(mrb, ary, FUNC6(c));
      }
    }
    proc = proc->upper;
  }
  return ary;
}