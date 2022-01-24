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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct mii_bus {int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static u32 FUNC7(struct mii_bus *mii, u32 reg)
{
	unsigned long flags;
	u16 phy_addr;
	u16 phy_reg;
	u32 hi, lo;

	reg = (reg & 0xfffffffc) >> 2;
	phy_addr = FUNC5(reg);
	phy_reg = FUNC6(reg);

	FUNC3(flags);
	FUNC1(mii->priv, 0x1f, 0x10, FUNC4(reg));
	lo = (u32) FUNC0(mii->priv, phy_addr, phy_reg);
	hi = (u32) FUNC0(mii->priv, phy_addr, phy_reg + 1);
	FUNC2(flags);

	return (hi << 16) | lo;
}