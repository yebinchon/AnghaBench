#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_7__ {int /*<<< orphan*/  jmp; int /*<<< orphan*/  eException_class; int /*<<< orphan*/  exc; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 

void
FUNC8(mrb_state *mrb, mrb_value exc)
{
  if (FUNC2(exc)) {
    mrb->exc = FUNC5(exc);
  }
  else {
    if (!FUNC4(mrb, exc, mrb->eException_class)) {
      FUNC7(mrb, E_TYPE_ERROR, "exception object expected");
    }
    FUNC3(mrb, exc);
  }
  if (!mrb->jmp) {
    FUNC6(mrb, exc);
    FUNC1();
  }
  FUNC0(mrb->jmp);
}