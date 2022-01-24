#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct RProc {int /*<<< orphan*/ * c; } ;
struct TYPE_3__ {scalar_t__ no_exec; scalar_t__ dump_result; } ;
typedef  TYPE_1__ mrbc_context ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int /*<<< orphan*/  mrb_irep ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct RProc*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct RProc*) ; 
 struct RProc* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RProc*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_irep *irep, mrbc_context *c)
{
  struct RProc *proc;

  if (!irep) {
    FUNC0(mrb);
    return FUNC3();
  }
  proc = FUNC5(mrb, irep);
  proc->c = NULL;
  FUNC2(mrb, irep);
  if (c && c->dump_result) FUNC1(mrb, proc);
  if (c && c->no_exec) return FUNC4(proc);
  return FUNC6(mrb, proc, FUNC7(mrb), 0);
}