#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
struct TYPE_13__ {TYPE_2__* c; } ;
typedef  TYPE_3__ mrb_state ;
struct TYPE_12__ {TYPE_1__* ci; } ;
struct TYPE_11__ {int /*<<< orphan*/  mid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value recv, mrb_value proc, mrb_value name, struct RClass *owner,
      int argc, mrb_value *argv, mrb_value block)
{
  mrb_value ret;
  mrb_sym orig_mid = mrb->c->ci->mid;

  mrb->c->ci->mid = FUNC7(name);
  if (FUNC6(proc)) {
    mrb_value missing_argv = FUNC1(mrb, argc, argv);
    FUNC2(mrb, missing_argv, name);
    ret = FUNC3(mrb, recv, FUNC5(mrb, "method_missing"), argc + 1, FUNC0(missing_argv));
  }
  else if (!FUNC6(block)) {
    /*
      workaround since `mrb_yield_with_class` does not support passing block as parameter
      need new API that initializes `mrb->c->stack[argc+1]` with block passed by argument
    */
    ret = FUNC4(mrb, recv, FUNC7(name), argc, argv, block);
  }
  else {
    ret = FUNC8(mrb, proc, argc, argv, recv, owner);
  }
  mrb->c->ci->mid = orig_mid;
  return ret;
}