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
 int DSCR_1 ; 
 int /*<<< orphan*/  DSCR_2 ; 
 int PPR_1 ; 
 int /*<<< orphan*/  PPR_2 ; 
 int /*<<< orphan*/  SPRN_DSCR ; 
 int /*<<< orphan*/  SPRN_PPR ; 
 int /*<<< orphan*/  SPRN_TAR ; 
 int TAR_1 ; 
 int /*<<< orphan*/  TAR_2 ; 
 int* cptr ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  shm_id ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int*) ; 
 char* user_read ; 
 char* user_write ; 
 int FUNC6 (unsigned long*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(void)
{
	unsigned long reg[3];
	int ret;

	cptr = (int *)FUNC4(shm_id, NULL, 0);
	FUNC3("%-30s TAR: %u PPR: %lx DSCR: %u\n",
			user_write, TAR_1, PPR_1, DSCR_1);

	FUNC2(SPRN_TAR, TAR_1);
	FUNC2(SPRN_PPR, PPR_1);
	FUNC2(SPRN_DSCR, DSCR_1);

	cptr[2] = 1;

	/* Wait on parent */
	while (!cptr[0])
		asm volatile("" : : : "memory");

	reg[0] = FUNC1(SPRN_TAR);
	reg[1] = FUNC1(SPRN_PPR);
	reg[2] = FUNC1(SPRN_DSCR);

	FUNC3("%-30s TAR: %lu PPR: %lx DSCR: %lu\n",
			user_read, reg[0], reg[1], reg[2]);

	/* Unblock the parent now */
	cptr[1] = 1;
	FUNC5((int *)cptr);

	ret = FUNC6(reg, TAR_2, PPR_2, DSCR_2);
	if (ret)
		FUNC0(1);
	FUNC0(0);
}