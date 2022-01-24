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
struct mt7620_gsw {int dummy; } ;

/* Variables and functions */
 int GSW_MDIO_ACCESS ; 
 int GSW_MDIO_ADDR_SHIFT ; 
 int GSW_MDIO_READ ; 
 int GSW_MDIO_REG_SHIFT ; 
 int GSW_MDIO_START ; 
 int /*<<< orphan*/  MT7620A_GSW_REG_PIAC ; 
 scalar_t__ FUNC0 (struct mt7620_gsw*) ; 
 int FUNC1 (struct mt7620_gsw*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mt7620_gsw*,int,int /*<<< orphan*/ ) ; 

u32 FUNC3(struct mt7620_gsw *gsw, int phy_addr, int phy_reg)
{
	u32 d;

	if (FUNC0(gsw))
		return 0xffff;

	FUNC2(gsw, GSW_MDIO_ACCESS | GSW_MDIO_START | GSW_MDIO_READ |
		(phy_reg << GSW_MDIO_REG_SHIFT) |
		(phy_addr << GSW_MDIO_ADDR_SHIFT),
		MT7620A_GSW_REG_PIAC);

	if (FUNC0(gsw))
		return 0xffff;

	d = FUNC1(gsw, MT7620A_GSW_REG_PIAC) & 0xffff;

	return d;
}