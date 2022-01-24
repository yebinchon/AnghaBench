#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ag71xx {TYPE_1__* dev; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG0 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG3 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG4 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG5 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_ADDR1 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_ADDR2 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_HDX ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_IFCTL ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_IPG ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ag71xx *ag)
{
	FUNC0("%s: mac_cfg1=%08x, mac_cfg2=%08x, ipg=%08x, hdx=%08x, mfl=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_MAC_CFG1),
		FUNC1(ag, AG71XX_REG_MAC_CFG2),
		FUNC1(ag, AG71XX_REG_MAC_IPG),
		FUNC1(ag, AG71XX_REG_MAC_HDX),
		FUNC1(ag, AG71XX_REG_MAC_MFL));
	FUNC0("%s: mac_ifctl=%08x, mac_addr1=%08x, mac_addr2=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_MAC_IFCTL),
		FUNC1(ag, AG71XX_REG_MAC_ADDR1),
		FUNC1(ag, AG71XX_REG_MAC_ADDR2));
	FUNC0("%s: fifo_cfg0=%08x, fifo_cfg1=%08x, fifo_cfg2=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_FIFO_CFG0),
		FUNC1(ag, AG71XX_REG_FIFO_CFG1),
		FUNC1(ag, AG71XX_REG_FIFO_CFG2));
	FUNC0("%s: fifo_cfg3=%08x, fifo_cfg4=%08x, fifo_cfg5=%08x\n",
		ag->dev->name,
		FUNC1(ag, AG71XX_REG_FIFO_CFG3),
		FUNC1(ag, AG71XX_REG_FIFO_CFG4),
		FUNC1(ag, AG71XX_REG_FIFO_CFG5));
}