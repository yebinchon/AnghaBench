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
typedef  int u32 ;
struct net_device {int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  mtu; } ;
struct ag71xx_platform_data {int reset_bit; } ;
struct TYPE_2__ {int descs_dma; scalar_t__ dirty; scalar_t__ curr; } ;
struct ag71xx {TYPE_1__ tx_ring; struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_MAC_MFL ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CFG ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int AR71XX_RESET_GE0_MAC ; 
 int AR71XX_RESET_GE1_MAC ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 struct ag71xx_platform_data* FUNC1 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ag71xx*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 

__attribute__((used)) static void FUNC14(struct ag71xx *ag)
{
	struct ag71xx_platform_data *pdata = FUNC1(ag);
	struct net_device *dev = ag->dev;
	u32 reset_mask = pdata->reset_bit;
	u32 rx_ds;
	u32 mii_reg;

	reset_mask &= AR71XX_RESET_GE0_MAC | AR71XX_RESET_GE1_MAC;

	FUNC4(ag);
	FUNC13();

	mii_reg = FUNC6(ag, AG71XX_REG_MII_CFG);
	rx_ds = FUNC6(ag, AG71XX_REG_RX_DESC);

	FUNC7(ag, true);

	FUNC10(reset_mask);
	FUNC12(10);
	FUNC9(reset_mask);
	FUNC12(10);

	FUNC0(ag);
	FUNC3(ag);
	ag->tx_ring.curr = 0;
	ag->tx_ring.dirty = 0;
	FUNC11(ag->dev);

	/* setup max frame length */
	FUNC8(ag, AG71XX_REG_MAC_MFL,
		  FUNC5(ag->dev->mtu));

	FUNC8(ag, AG71XX_REG_RX_DESC, rx_ds);
	FUNC8(ag, AG71XX_REG_TX_DESC, ag->tx_ring.descs_dma);
	FUNC8(ag, AG71XX_REG_MII_CFG, mii_reg);

	FUNC2(ag, dev->dev_addr);
}