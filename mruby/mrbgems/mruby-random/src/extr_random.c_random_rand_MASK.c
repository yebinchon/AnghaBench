#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  rand_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb, rand_state *t, mrb_value max)
{
  mrb_value value;

  if (FUNC0(max) == 0) {
#ifndef MRB_WITHOUT_FLOAT
    value = FUNC2(mrb, FUNC4(t));
#else
    mrb_raise(mrb, E_ARGUMENT_ERROR, "Float not supported");
#endif
  }
  else {
    value = FUNC1(FUNC5(t) % FUNC0(max));
  }

  return value;
}