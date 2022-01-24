#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_4__ {int speed; int phy_mode; scalar_t__ duplex; scalar_t__ force_link; int /*<<< orphan*/  enabled; } ;
struct TYPE_3__ {int speed; int phy_mode; int /*<<< orphan*/  np; scalar_t__ duplex; scalar_t__ force_link; int /*<<< orphan*/  enabled; } ;
struct gsw_mt753x {TYPE_2__ port6_cfg; int /*<<< orphan*/  dev; TYPE_1__ port5_cfg; } ;

/* Variables and functions */
 int BACKPR_EN ; 
 int FUNC0 (int) ; 
 int BKOFF_EN ; 
 int FORCE_DPX ; 
 int FORCE_LINK ; 
 int FORCE_MODE ; 
 int FORCE_RX_FC ; 
 int FORCE_SPD_S ; 
 int FORCE_TX_FC ; 
 int IPG_96BIT_WITH_SHORT_IPG ; 
 int IPG_CFG_S ; 
 int MAC_MODE ; 
 int MAC_RX_EN ; 
 int MAC_TX_EN ; 
 int /*<<< orphan*/  MHWSTRAP ; 
 int P5_INTF_DIS_S ; 
 int P5_INTF_MODE_RGMII ; 
 int P5_INTF_SEL_GMAC5 ; 
 int P5_PHY0_SEL ; 
 int /*<<< orphan*/  P6ECR ; 
 int P6_INTF_DIS ; 
#define  PHY_INTERFACE_MODE_GMII 131 
#define  PHY_INTERFACE_MODE_MII 130 
#define  PHY_INTERFACE_MODE_RGMII 129 
#define  PHY_INTERFACE_MODE_TRGMII 128 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC3 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct gsw_mt753x *gsw)
{
	u32 hwstrap, p6ecr = 0, p5mcr, p6mcr, phyad;

	hwstrap = FUNC3(gsw, MHWSTRAP);
	hwstrap &= ~(P6_INTF_DIS | P5_INTF_MODE_RGMII | P5_INTF_DIS_S);
	hwstrap |= P5_INTF_SEL_GMAC5;
	if (!gsw->port5_cfg.enabled) {
		p5mcr = FORCE_MODE;
		hwstrap |= P5_INTF_DIS_S;
	} else {
		p5mcr = (IPG_96BIT_WITH_SHORT_IPG << IPG_CFG_S) |
			MAC_MODE | MAC_TX_EN | MAC_RX_EN |
			BKOFF_EN | BACKPR_EN;

		if (gsw->port5_cfg.force_link) {
			p5mcr |= FORCE_MODE | FORCE_LINK | FORCE_RX_FC |
				 FORCE_TX_FC;
			p5mcr |= gsw->port5_cfg.speed << FORCE_SPD_S;

			if (gsw->port5_cfg.duplex)
				p5mcr |= FORCE_DPX;
		}

		switch (gsw->port5_cfg.phy_mode) {
		case PHY_INTERFACE_MODE_MII:
		case PHY_INTERFACE_MODE_GMII:
			break;
		case PHY_INTERFACE_MODE_RGMII:
			hwstrap |= P5_INTF_MODE_RGMII;
			break;
		default:
			FUNC2(gsw->dev, "%s is not supported by port5\n",
				 FUNC6(gsw->port5_cfg.phy_mode));
			p5mcr = FORCE_MODE;
			hwstrap |= P5_INTF_DIS_S;
		}

		/* Port5 to PHY direct mode */
		if (FUNC5(gsw->port5_cfg.np, "phy-address",
					 &phyad))
			goto parse_p6;

		if (phyad != 0 && phyad != 4) {
			FUNC2(gsw->dev,
				 "Only PHY 0/4 can be connected to Port 5\n");
			goto parse_p6;
		}

		hwstrap &= ~P5_INTF_SEL_GMAC5;
		if (phyad == 0)
			hwstrap |= P5_PHY0_SEL;
		else
			hwstrap &= ~P5_PHY0_SEL;
	}

parse_p6:
	if (!gsw->port6_cfg.enabled) {
		p6mcr = FORCE_MODE;
		hwstrap |= P6_INTF_DIS;
	} else {
		p6mcr = (IPG_96BIT_WITH_SHORT_IPG << IPG_CFG_S) |
			MAC_MODE | MAC_TX_EN | MAC_RX_EN |
			BKOFF_EN | BACKPR_EN;

		if (gsw->port6_cfg.force_link) {
			p6mcr |= FORCE_MODE | FORCE_LINK | FORCE_RX_FC |
				 FORCE_TX_FC;
			p6mcr |= gsw->port6_cfg.speed << FORCE_SPD_S;

			if (gsw->port6_cfg.duplex)
				p6mcr |= FORCE_DPX;
		}

		switch (gsw->port6_cfg.phy_mode) {
		case PHY_INTERFACE_MODE_RGMII:
			p6ecr = FUNC0(1);
			break;
		case PHY_INTERFACE_MODE_TRGMII:
			/* set MT7530 central align */
			p6ecr = FUNC0(0);
			break;
		default:
			FUNC2(gsw->dev, "%s is not supported by port6\n",
				 FUNC6(gsw->port6_cfg.phy_mode));
			p6mcr = FORCE_MODE;
			hwstrap |= P6_INTF_DIS;
		}
	}

	FUNC4(gsw, MHWSTRAP, hwstrap);
	FUNC4(gsw, P6ECR, p6ecr);

	FUNC4(gsw, FUNC1(5), p5mcr);
	FUNC4(gsw, FUNC1(6), p6mcr);

	return 0;
}