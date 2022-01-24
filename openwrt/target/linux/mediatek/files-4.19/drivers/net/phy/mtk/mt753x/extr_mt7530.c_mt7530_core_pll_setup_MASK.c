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
struct TYPE_2__ {scalar_t__ phy_mode; scalar_t__ enabled; } ;
struct gsw_mt753x {TYPE_1__ port6_cfg; scalar_t__ direct_phy_access; } ;

/* Variables and functions */
 int CHG_TRAP ; 
 int /*<<< orphan*/  CORE_GSWPLL_GCR_1 ; 
 int /*<<< orphan*/  CORE_GSWPLL_GCR_2 ; 
 int CSR_RGMII_EDGE_ALIGN ; 
 int CSR_RGMII_RXC_0DEG_CFG_S ; 
 int CSR_RGMII_TXC_CFG_S ; 
 int C_MDIO_BPS_S ; 
 int GSWCK_EN ; 
 int GSWPLL_EN_PRE ; 
 int GSWPLL_FBKDIV_200M_S ; 
 int GSWPLL_FBKDIV_500M_S ; 
 int GSWPLL_POSTDIV_200M_S ; 
 int GSWPLL_POSTDIV_500M_S ; 
 int /*<<< orphan*/  HWSTRAP ; 
 int /*<<< orphan*/  MHWSTRAP ; 
 int /*<<< orphan*/  P5RGMIIRXCR ; 
 int /*<<< orphan*/  P5RGMIITXCR ; 
 scalar_t__ PHY_INTERFACE_MODE_TRGMII ; 
 int /*<<< orphan*/  TRGMII_GSW_CLK_CG ; 
#define  XTAL_40MHZ 128 
 int XTAL_FSEL_M ; 
 int XTAL_FSEL_S ; 
 int /*<<< orphan*/  FUNC0 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*) ; 
 int FUNC3 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gsw_mt753x*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int,int) ; 

__attribute__((used)) static void FUNC6(struct gsw_mt753x *gsw)
{
	u32 hwstrap;

	hwstrap = FUNC3(gsw, HWSTRAP);

	switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
	case XTAL_40MHZ:
		/* Disable MT7530 core clock */
		FUNC0(gsw, TRGMII_GSW_CLK_CG, 0);

		/* disable MT7530 PLL */
		FUNC0(gsw, CORE_GSWPLL_GCR_1,
				      (2 << GSWPLL_POSTDIV_200M_S) |
				      (32 << GSWPLL_FBKDIV_200M_S));

		/* For MT7530 core clock = 500Mhz */
		FUNC0(gsw, CORE_GSWPLL_GCR_2,
				      (1 << GSWPLL_POSTDIV_500M_S) |
				      (25 << GSWPLL_FBKDIV_500M_S));

		/* Enable MT7530 PLL */
		FUNC0(gsw, CORE_GSWPLL_GCR_1,
				      (2 << GSWPLL_POSTDIV_200M_S) |
				      (32 << GSWPLL_FBKDIV_200M_S) |
				      GSWPLL_EN_PRE);

		FUNC5(20, 40);

		/* Enable MT7530 core clock */
		FUNC0(gsw, TRGMII_GSW_CLK_CG, GSWCK_EN);
		break;
	default:
		/* TODO: PLL settings for 20/25MHz */
		break;
	}

	hwstrap = FUNC3(gsw, HWSTRAP);
	hwstrap |= CHG_TRAP;
	if (gsw->direct_phy_access)
		hwstrap &= ~C_MDIO_BPS_S;
	else
		hwstrap |= C_MDIO_BPS_S;

	FUNC4(gsw, MHWSTRAP, hwstrap);

	if (gsw->port6_cfg.enabled &&
	    gsw->port6_cfg.phy_mode == PHY_INTERFACE_MODE_TRGMII) {
		FUNC2(gsw);
	} else {
		/* RGMII */
		FUNC1(gsw);
	}

	/* delay setting for 10/1000M */
	FUNC4(gsw, P5RGMIIRXCR,
			 CSR_RGMII_EDGE_ALIGN |
			 (2 << CSR_RGMII_RXC_0DEG_CFG_S));
	FUNC4(gsw, P5RGMIITXCR, 0x14 << CSR_RGMII_TXC_CFG_S);
}