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
typedef  int mpc_val_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (int) ; 
 int FUNC2 (int*,int /*<<< orphan*/ *,int) ; 

mpc_val_t *FUNC3(mpc_val_t *x) {
  int *y = FUNC1(sizeof(int));
  *y = FUNC2(x, NULL, 8);
  FUNC0(x);
  return y;
}