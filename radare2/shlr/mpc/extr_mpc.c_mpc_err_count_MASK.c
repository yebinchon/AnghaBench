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
typedef  int /*<<< orphan*/  mpc_input_t ;
typedef  int /*<<< orphan*/  mpc_err_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 scalar_t__ FUNC4 (char*) ; 

__attribute__((used)) static mpc_err_t *FUNC5(mpc_input_t *i, mpc_err_t *x, int n) {
  mpc_err_t *y;
  int digits = n/10 + 1;
  char *prefix;
  prefix = FUNC2(i, digits + FUNC4(" of ") + 1);
  FUNC3(prefix, "%i of ", n);
  y = FUNC0(i, x, prefix);
  FUNC1(i, prefix);
  return y;
}