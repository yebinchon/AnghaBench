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
typedef  int u64 ;

/* Variables and functions */
 int MMCR0_FC ; 
 int MMCR0_PMAO ; 
 int /*<<< orphan*/  SPRN_MMCR0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

int FUNC2(void)
{
	u64 val;

	val = FUNC0(SPRN_MMCR0);
	if ((val & (MMCR0_FC | MMCR0_PMAO)) == MMCR0_FC) {
		/* It's OK if we see FC & PMAO, but not FC by itself */
		FUNC1("Outside of loop, only FC set 0x%llx\n", val);
		return 1;
	}

	return 0;
}