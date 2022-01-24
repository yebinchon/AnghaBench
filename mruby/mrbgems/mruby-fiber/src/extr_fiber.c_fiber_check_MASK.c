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
struct mrb_context {int dummy; } ;
struct RFiber {scalar_t__ tt; struct mrb_context* cxt; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_FIBER_ERROR ; 
 scalar_t__ MRB_TT_FIBER ; 
 struct RFiber* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static struct mrb_context*
FUNC3(mrb_state *mrb, mrb_value fib)
{
  struct RFiber *f = FUNC0(fib);

  FUNC1(f->tt == MRB_TT_FIBER);
  if (!f->cxt) {
    FUNC2(mrb, E_FIBER_ERROR, "uninitialized Fiber");
  }
  return f->cxt;
}