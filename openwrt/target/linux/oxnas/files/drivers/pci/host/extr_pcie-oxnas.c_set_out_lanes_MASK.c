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
struct oxnas_pcie {scalar_t__ outbound_offset; int /*<<< orphan*/  sys_ctrl; } ;

/* Variables and functions */
 scalar_t__ PCIE_AHB_SLAVE_CTRL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  PCIE_SLAVE_BE_MASK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(struct oxnas_pcie *pcie, unsigned lanes)
{
	FUNC1(pcie->sys_ctrl, pcie->outbound_offset + PCIE_AHB_SLAVE_CTRL,
				  PCIE_SLAVE_BE_MASK, FUNC0(lanes));
	FUNC2();
}