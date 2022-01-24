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
struct oxnas_pcie {int /*<<< orphan*/  pcie_ctrl_offset; int /*<<< orphan*/  sys_ctrl; } ;

/* Variables and functions */
 unsigned long HZ ; 
 unsigned long LINK_UP_TIMEOUT_SECONDS ; 
 unsigned int PCIE_LINK_UP ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long) ; 

__attribute__((used)) static int FUNC2(struct oxnas_pcie *pcie)
{
	unsigned long end;
	unsigned int val;

	/* Poll for PCIE link up */
	end = jiffies + (LINK_UP_TIMEOUT_SECONDS * HZ);
	while (!FUNC1(jiffies, end)) {
		FUNC0(pcie->sys_ctrl, pcie->pcie_ctrl_offset, &val);
		if (val & PCIE_LINK_UP)
			return 1;
	}
	return 0;
}