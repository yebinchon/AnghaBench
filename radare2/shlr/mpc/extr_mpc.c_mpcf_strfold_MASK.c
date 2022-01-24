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

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

mpc_val_t *FUNC5(int n, mpc_val_t **xs) {
  int i;
  size_t l = 0;
  
  if (n == 0) { return FUNC0(1, 1); }
  
  for (i = 0; i < n; i++) { l += FUNC4(xs[i]); }
  
  xs[0] = FUNC2(xs[0], l + 1);
  
  for (i = 1; i < n; i++) {
    FUNC3(xs[0], xs[i]); FUNC1(xs[i]);
  }
  
  return xs[0];
}