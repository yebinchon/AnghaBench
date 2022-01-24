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
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int* cptr ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  fp_load ; 
 int /*<<< orphan*/  fp_load_new ; 
 int /*<<< orphan*/  fp_store ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(void)
{
	int ret;

	cptr = (int *)FUNC3(shm_id, NULL, 0);
	FUNC2(fp_load, 0);
	cptr[1] = 1;

	while (!cptr[0])
		asm volatile("" : : : "memory");
	FUNC4((void *) cptr);

	FUNC5(fp_store, 0);
	ret = FUNC0(fp_store, fp_load_new);
	if (ret)
		FUNC1(1);
	FUNC1(0);
}