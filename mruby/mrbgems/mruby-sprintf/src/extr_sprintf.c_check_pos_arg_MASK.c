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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,...) ; 

__attribute__((used)) static void
FUNC1(mrb_state *mrb, int posarg, mrb_int n)
{
  if (posarg > 0) {
    FUNC0(mrb, E_ARGUMENT_ERROR, "numbered(%i) after unnumbered(%d)",
               n, posarg);
  }
  if (posarg == -2) {
    FUNC0(mrb, E_ARGUMENT_ERROR, "numbered(%i) after named", n);
  }
  if (n < 1) {
    FUNC0(mrb, E_ARGUMENT_ERROR, "invalid index - %i$", n);
  }
}