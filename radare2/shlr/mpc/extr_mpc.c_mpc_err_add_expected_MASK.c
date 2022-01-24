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
typedef  int /*<<< orphan*/  mpc_input_t ;
struct TYPE_3__ {int expected_num; int /*<<< orphan*/ * expected; } ;
typedef  TYPE_1__ mpc_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(mpc_input_t *i, mpc_err_t *x, char *expected) {
  (void)i;
  x->expected_num++;
  x->expected = FUNC1(i, x->expected, sizeof(char*) * x->expected_num);
  x->expected[x->expected_num-1] = FUNC0(i, FUNC3(expected) + 1);
  FUNC2(x->expected[x->expected_num-1], expected);
}