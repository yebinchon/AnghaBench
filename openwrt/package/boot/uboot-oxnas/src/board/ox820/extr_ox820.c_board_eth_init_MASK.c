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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  bd_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAC_BASE ; 
 int /*<<< orphan*/  PHY_INTERFACE_MODE_RGMII ; 
 int /*<<< orphan*/  PINMUX_BANK_MFA ; 
 int /*<<< orphan*/  PINMUX_MACA_MDC ; 
 int /*<<< orphan*/  PINMUX_MACA_MDIO ; 
 int /*<<< orphan*/  SYS_CTRL_CLK_MAC ; 
 int /*<<< orphan*/  SYS_CTRL_GMAC_AUTOSPEED ; 
 int /*<<< orphan*/  SYS_CTRL_GMAC_CKEN_GTX ; 
 int /*<<< orphan*/  SYS_CTRL_GMAC_CTRL ; 
 int /*<<< orphan*/  SYS_CTRL_GMAC_SIMPLE_MUX ; 
 int /*<<< orphan*/  SYS_CTRL_RST_MAC ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC8(bd_t *bis)
{
	u32 value;

	/* set the pin multiplexers to enable talking to Ethernent Phys */
	FUNC3(PINMUX_BANK_MFA, 3, PINMUX_MACA_MDC);
	FUNC3(PINMUX_BANK_MFA, 4, PINMUX_MACA_MDIO);

	// Ensure the MAC block is properly reset
	FUNC5(SYS_CTRL_RST_MAC, 1);
	FUNC6(10);
	FUNC5(SYS_CTRL_RST_MAC, 0);

	// Enable the clock to the MAC block
	FUNC2(SYS_CTRL_CLK_MAC);

	value = FUNC4(SYS_CTRL_GMAC_CTRL);
	/* Use simple mux for 25/125 Mhz clock switching */
	value |= FUNC0(SYS_CTRL_GMAC_SIMPLE_MUX);
	/* Enable GMII_GTXCLK to follow GMII_REFCLK - required for gigabit PHY */
	value |= FUNC0(SYS_CTRL_GMAC_CKEN_GTX);
	/* set auto tx speed */
	value |= FUNC0(SYS_CTRL_GMAC_AUTOSPEED);

	FUNC7(value, SYS_CTRL_GMAC_CTRL);

	return FUNC1(MAC_BASE, PHY_INTERFACE_MODE_RGMII);
}