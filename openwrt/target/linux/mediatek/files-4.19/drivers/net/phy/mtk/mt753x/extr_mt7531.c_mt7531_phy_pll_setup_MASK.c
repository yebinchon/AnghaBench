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
struct gsw_mt753x {int (* mmd_read ) (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* mmd_write ) (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  HWSTRAP ; 
 int /*<<< orphan*/  PHY_DEV1F ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_104 ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_10A ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_10B ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_10C ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_10D ; 
 int /*<<< orphan*/  PHY_DEV1F_REG_403 ; 
 int PHY_PLL_M ; 
 int FUNC0 (int) ; 
#define  XTAL_25MHZ 129 
#define  XTAL_40MHZ 128 
 int XTAL_FSEL_M ; 
 int XTAL_FSEL_S ; 
 int FUNC1 (struct gsw_mt753x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct gsw_mt753x*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC16(struct gsw_mt753x *gsw)
{
	u32 hwstrap;
	u32 val;

	hwstrap = FUNC1(gsw, HWSTRAP);

	switch ((hwstrap & XTAL_FSEL_M) >> XTAL_FSEL_S) {
	case XTAL_25MHZ:
		/* disable pll auto calibration */
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_104, 0x608);

		/* change pll sel */
		val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
				     PHY_DEV1F_REG_403);
		val &= ~(PHY_PLL_M);
		val |= FUNC0(3);
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);

		/* set divider ratio */
		gsw->mmd_write(gsw, 0, PHY_DEV1F,
			       PHY_DEV1F_REG_10A, 0x1009);

		/* set divider ratio */
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10B, 0x7c6);

		/* capacitance and resistance adjustment */
		gsw->mmd_write(gsw, 0, PHY_DEV1F,
			       PHY_DEV1F_REG_10C, 0xa8be);

		break;
	case XTAL_40MHZ:
		/* disable pll auto calibration */
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_104, 0x608);

		/* change pll sel */
		val = gsw->mmd_read(gsw, 0, PHY_DEV1F,
				     PHY_DEV1F_REG_403);
		val &= ~(PHY_PLL_M);
		val |= FUNC0(3);
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_403, val);

		/* set divider ratio */
		gsw->mmd_write(gsw, 0, PHY_DEV1F,
			       PHY_DEV1F_REG_10A, 0x1018);

		/* set divider ratio */
		gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10B, 0xc676);

		/* capacitance and resistance adjustment */
		gsw->mmd_write(gsw, 0, PHY_DEV1F,
			       PHY_DEV1F_REG_10C, 0xd8be);
		break;
	}

	/* power down pll. additional delay is not required via mdio access */
	gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10D, 0x10);

	/* power up pll */
	gsw->mmd_write(gsw, 0, PHY_DEV1F, PHY_DEV1F_REG_10D, 0x14);
}