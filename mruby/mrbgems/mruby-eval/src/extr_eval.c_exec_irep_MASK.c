#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct RProc {int dummy; } ;
typedef  int ptrdiff_t ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_10__ {TYPE_2__* c; scalar_t__ exc; } ;
typedef  TYPE_3__ mrb_state ;
struct TYPE_9__ {int /*<<< orphan*/ * stack; TYPE_1__* cibase; TYPE_1__* ci; } ;
struct TYPE_8__ {scalar_t__ acc; scalar_t__ argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,struct RProc*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value self, struct RProc *proc)
{
  /* no argument passed from eval() */
  mrb->c->ci->argc = 0;
  if (mrb->c->ci->acc < 0) {
    ptrdiff_t cioff = mrb->c->ci - mrb->c->cibase;
    mrb_value ret = FUNC4(mrb, proc, self, 0);
    if (mrb->exc) {
      FUNC0(mrb, FUNC3(mrb->exc));
    }
    mrb->c->ci = mrb->c->cibase + cioff;
    return ret;
  }
  /* clear block */
  mrb->c->stack[1] = FUNC2();
  return FUNC1(mrb, self, proc);
}