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
typedef  int /*<<< orphan*/  mpc_val_t ;
typedef  int /*<<< orphan*/  mpc_input_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static mpc_val_t *FUNC5(mpc_input_t *i, int n, mpc_val_t **xs) {
  int j;
  size_t l = 0;
  if (n == 0) { return FUNC0(i, 1, 1); }
  for (j = 0; j < n; j++) { l += FUNC4(xs[j]); }
  xs[0] = FUNC2(i, xs[0], l + 1);
  for (j = 1; j < n; j++) { FUNC3(xs[0], xs[j]); FUNC1(i, xs[j]); }
  return xs[0];
}