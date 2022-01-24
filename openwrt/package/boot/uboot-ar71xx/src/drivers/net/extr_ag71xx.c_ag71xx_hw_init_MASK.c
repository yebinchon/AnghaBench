#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int u32 ;
struct TYPE_5__ {int /*<<< orphan*/  descs_dma; } ;
struct TYPE_4__ {int /*<<< orphan*/  descs_dma; } ;
struct ag71xx {scalar_t__ macNum; TYPE_3__* dev; TYPE_2__ rx_ring; TYPE_1__ tx_ring; int /*<<< orphan*/  mii_if; } ;
struct TYPE_6__ {int /*<<< orphan*/  enetaddr; } ;

/* Variables and functions */
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG0 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG4 ; 
 int /*<<< orphan*/  AG71XX_REG_FIFO_CFG5 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG1 ; 
 int /*<<< orphan*/  AG71XX_REG_MAC_CFG2 ; 
 int /*<<< orphan*/  AG71XX_REG_MII_CFG ; 
 int /*<<< orphan*/  AG71XX_REG_RX_DESC ; 
 int /*<<< orphan*/  AG71XX_REG_TX_DESC ; 
 int /*<<< orphan*/  AR91XX_RESET_REG_RESET_MODULE ; 
 int FIFO_CFG0_INIT ; 
 int FIFO_CFG4_INIT ; 
 int FIFO_CFG5_INIT ; 
 int MAC_CFG1_RXE ; 
 int MAC_CFG1_SR ; 
 int MAC_CFG1_TXE ; 
 int MAC_CFG2_LEN_CHECK ; 
 int MAC_CFG2_PAD_CRC_EN ; 
 int MII_CFG_CLK_DIV_20 ; 
 int RESET_MODULE_GE0_MAC ; 
 int RESET_MODULE_GE0_PHY ; 
 int RESET_MODULE_GE1_MAC ; 
 int RESET_MODULE_GE1_PHY ; 
 int /*<<< orphan*/  FUNC0 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC1 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ag71xx*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct ag71xx*) ; 
 int /*<<< orphan*/  FUNC4 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ag71xx*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(struct ag71xx *ag)
{
    int ret = 0;
	uint32_t reg;
	uint32_t mask, mii_type;

    if (ag->macNum == 0) {
        mask = (RESET_MODULE_GE0_MAC | RESET_MODULE_GE0_PHY);
        mii_type = 0x13;
    } else {
        mask = (RESET_MODULE_GE1_MAC | RESET_MODULE_GE1_PHY);
        mii_type = 0x11;
    }

    // mac soft reset
    FUNC4(ag, AG71XX_REG_MAC_CFG1, MAC_CFG1_SR);
    FUNC8(20);
	
	// device stop
	reg = FUNC6(AR91XX_RESET_REG_RESET_MODULE);
	FUNC7(AR91XX_RESET_REG_RESET_MODULE, reg | mask);
	FUNC8(100 * 1000);
	
    // device start
    reg = FUNC6(AR91XX_RESET_REG_RESET_MODULE);
    FUNC7(AR91XX_RESET_REG_RESET_MODULE, reg & ~mask);
    FUNC8(100 * 1000);

    /* setup MAC configuration registers */
    FUNC5(ag, AG71XX_REG_MAC_CFG1, (MAC_CFG1_RXE | MAC_CFG1_TXE));

    FUNC4(ag, AG71XX_REG_MAC_CFG2,
          MAC_CFG2_PAD_CRC_EN | MAC_CFG2_LEN_CHECK);

    /* setup FIFO configuration register 0 */
    FUNC5(ag, AG71XX_REG_FIFO_CFG0, FIFO_CFG0_INIT);

    /* setup MII interface type */
    FUNC2(ag, ag->mii_if);

    /* setup mdio clock divisor */
    FUNC5(ag, AG71XX_REG_MII_CFG, MII_CFG_CLK_DIV_20);
	
	/* setup FIFO configuration registers */
	FUNC4(ag, AG71XX_REG_FIFO_CFG4, FIFO_CFG4_INIT);
    FUNC5(ag, AG71XX_REG_FIFO_CFG1, 0x0fff0000);
    FUNC5(ag, AG71XX_REG_FIFO_CFG2, 0x00001fff);
    FUNC5(ag, AG71XX_REG_FIFO_CFG5, FIFO_CFG5_INIT);

    FUNC0(ag);

    ret = FUNC3(ag);
    if (ret)
        return -1;

	FUNC5(ag, AG71XX_REG_TX_DESC, 
				(u32) FUNC9(ag->tx_ring.descs_dma));
	FUNC5(ag, AG71XX_REG_RX_DESC,
				(u32) FUNC9(ag->rx_ring.descs_dma));
		
	FUNC1(ag, ag->dev->enetaddr);
	
    return 0;
}