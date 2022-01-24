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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ *)) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpcf_ctor_str ; 
 int /*<<< orphan*/  mpcf_strfold ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mpc_val_t *FUNC6(int n, mpc_val_t **xs) {
  int num;
  (void) n;
  if (!xs[1]) { return xs[0]; }
  if (FUNC5(xs[1], "*") == 0) { FUNC0(xs[1]); return FUNC2(mpcf_strfold, xs[0]); }
  if (FUNC5(xs[1], "+") == 0) { FUNC0(xs[1]); return FUNC3(mpcf_strfold, xs[0]); }
  if (FUNC5(xs[1], "?") == 0) { FUNC0(xs[1]); return FUNC4(xs[0], mpcf_ctor_str); }
  num = *(int*)xs[1];
  FUNC0(xs[1]);
  
  return FUNC1(num, mpcf_strfold, xs[0], free);
}