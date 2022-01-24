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
typedef  int /*<<< orphan*/  phys_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_HYP_EXEC ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,unsigned long*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(phys_addr_t phys_addr, size_t size,
			     void **haddr)
{
	unsigned long addr;
	int ret;

	FUNC0(FUNC2());

	ret = FUNC1(phys_addr, size,
					   &addr, PAGE_HYP_EXEC);
	if (ret) {
		*haddr = NULL;
		return ret;
	}

	*haddr = (void *)addr;
	return 0;
}