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
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int RTL8366S_PHY_ACCESS_CTRL_REG ; 
 int RTL8366S_PHY_ADDR_MAX ; 
 int RTL8366S_PHY_CTRL_WRITE ; 
 int RTL8366S_PHY_NO_MAX ; 
 int RTL8366S_PHY_NO_OFFSET ; 
 int RTL8366S_PHY_REG_MASK ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,int) ; 

__attribute__((used)) static int FUNC2(uint32_t phyNum, uint32_t reg, uint16_t data)
{
    uint16_t phyAddr;

    if (phyNum > RTL8366S_PHY_NO_MAX) {
		FUNC0("rtl8366s: invalid phy number!\n");
		return -1;
	}

    if (phyNum > RTL8366S_PHY_ADDR_MAX) {
		FUNC0("rtl8366s: invalid phy register number!\n");
		return -1;
	}

	if (FUNC1(RTL8366S_PHY_ACCESS_CTRL_REG,
                           RTL8366S_PHY_CTRL_WRITE))
        return -1;

    phyAddr = 0x8000 | (1 << (phyNum + RTL8366S_PHY_NO_OFFSET))
                     | (reg & RTL8366S_PHY_REG_MASK);
    if (FUNC1(phyAddr, data))
        return -1;

    return 0;
}