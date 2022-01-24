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
 int /*<<< orphan*/  mpc_escape_input_raw_cchar ; 
 int /*<<< orphan*/  mpc_escape_output_raw_cchar ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mpc_val_t *FUNC2(mpc_val_t *x) {
  mpc_val_t *y = FUNC1(x, mpc_escape_input_raw_cchar, mpc_escape_output_raw_cchar);
  FUNC0(x);
  return y;
}