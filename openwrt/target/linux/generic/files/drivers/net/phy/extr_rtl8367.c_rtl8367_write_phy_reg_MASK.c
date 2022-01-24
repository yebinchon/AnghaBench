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
typedef  scalar_t__ u32 ;
struct rtl8366_smi {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int EINVAL ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  RTL8367_IA_ADDRESS_REG ; 
 scalar_t__ RTL8367_IA_CTRL_CMD_MASK ; 
 int /*<<< orphan*/  RTL8367_IA_CTRL_REG ; 
 scalar_t__ RTL8367_IA_CTRL_RW_WRITE ; 
 scalar_t__ RTL8367_IA_STATUS_PHY_BUSY ; 
 int /*<<< orphan*/  RTL8367_IA_STATUS_REG ; 
 int /*<<< orphan*/  RTL8367_IA_WRITE_DATA_REG ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ RTL8367_PHY_ADDR_MAX ; 
 scalar_t__ RTL8367_PHY_REG_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct rtl8366_smi *smi,
				 u32 phy_addr, u32 phy_reg, u32 val)
{
	int timeout;
	u32 data;
	int err;

	FUNC3(smi->parent, "phy_write: addr:%02x, reg:%02x, val:%04x\n",
		phy_addr, phy_reg, val);

	if (phy_addr > RTL8367_PHY_ADDR_MAX)
		return -EINVAL;

	if (phy_reg > RTL8367_PHY_REG_MAX)
		return -EINVAL;

	FUNC0(smi, RTL8367_IA_STATUS_REG, &data);
	if (data & RTL8367_IA_STATUS_PHY_BUSY)
		return -ETIMEDOUT;

	/* preapre data */
	FUNC1(smi, RTL8367_IA_WRITE_DATA_REG, val);

	/* prepare address */
	FUNC1(smi, RTL8367_IA_ADDRESS_REG,
	       FUNC2(phy_addr, phy_reg));

	/* send write command */
	FUNC1(smi, RTL8367_IA_CTRL_REG,
	       RTL8367_IA_CTRL_CMD_MASK | RTL8367_IA_CTRL_RW_WRITE);

	timeout = 5;
	do {
		FUNC0(smi, RTL8367_IA_STATUS_REG, &data);
		if ((data & RTL8367_IA_STATUS_PHY_BUSY) == 0)
			break;

		if (timeout--) {
			FUNC4(smi->parent, "phy write timed out\n");
			return -ETIMEDOUT;
		}

		FUNC5(1);
	} while (1);

	return 0;
}