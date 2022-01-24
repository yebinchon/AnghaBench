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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  __unbuffered_tpr_y ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ss ; 
 int /*<<< orphan*/  x ; 
 int /*<<< orphan*/  y ; 

void FUNC5(void)
{
	int idx;

#ifndef FORCE_FAILURE_3
	idx = FUNC3(&ss);
#endif
	FUNC2();

	__unbuffered_tpr_y = FUNC0(y);
#ifdef FORCE_FAILURE
	srcu_read_unlock(&ss, idx);
	idx = srcu_read_lock(&ss);
#endif
	FUNC1(x, 1);

#ifndef FORCE_FAILURE_3
	FUNC4(&ss, idx);
#endif
	FUNC2();
}