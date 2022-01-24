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
struct oxnas_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/  syscon; scalar_t__ use_phya; scalar_t__ use_pllb; int /*<<< orphan*/  rst_phyb; int /*<<< orphan*/  rst_phya; int /*<<< orphan*/  rst_host; int /*<<< orphan*/  phyref; int /*<<< orphan*/  refsrc; } ;

/* Variables and functions */
 int /*<<< orphan*/  PLLB_DIV_CTRL_REGOFFSET ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC1 (int) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC3 (int) ; 
 int /*<<< orphan*/  REF300_DIV_REGOFFSET ; 
 int /*<<< orphan*/  USBAMUX_DEVICE ; 
 int /*<<< orphan*/  USBHSPHY_CTRL_REGOFFSET ; 
 unsigned long USBHSPHY_TEST_ADD ; 
 unsigned long USBHSPHY_TEST_CLK ; 
 int USBHSPHY_TEST_DIN ; 
 unsigned long USB_CLK_INTERNAL ; 
 int /*<<< orphan*/  USB_CTRL_REGOFFSET ; 
 unsigned long USB_INT_CLK_PLLB ; 
 unsigned long USB_INT_CLK_REF300 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct oxnas_hcd *oxnas)
{
	if (oxnas->use_pllb) {
		/* enable pllb */
		FUNC4(oxnas->refsrc);
		/* enable ref600 */
		FUNC4(oxnas->phyref);
		/* 600MHz pllb divider for 12MHz */
		FUNC6(oxnas->syscon, PLLB_DIV_CTRL_REGOFFSET, 0xffff, FUNC1(50) | FUNC0(0));
	} else {
		/* ref 300 divider for 12MHz */
		FUNC6(oxnas->syscon, REF300_DIV_REGOFFSET, 0xffff, FUNC3(25) | FUNC2(0));
	}

	/* Ensure the USB block is properly reset */
	FUNC7(oxnas->rst_host);
	FUNC7(oxnas->rst_phya);
	FUNC7(oxnas->rst_phyb);

	/* Force the high speed clock to be generated all the time, via serial
	 programming of the USB HS PHY */
	FUNC6(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
			  (2UL << USBHSPHY_TEST_ADD) |
			  (0xe0UL << USBHSPHY_TEST_DIN));

	FUNC6(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
			  (1UL << USBHSPHY_TEST_CLK) |
			  (2UL << USBHSPHY_TEST_ADD) |
			  (0xe0UL << USBHSPHY_TEST_DIN));

	FUNC6(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
			  (0xfUL << USBHSPHY_TEST_ADD) |
			  (0xaaUL << USBHSPHY_TEST_DIN));

	FUNC6(oxnas->syscon, USBHSPHY_CTRL_REGOFFSET, 0xffff,
			  (1UL << USBHSPHY_TEST_CLK) |
			  (0xfUL << USBHSPHY_TEST_ADD) |
			  (0xaaUL << USBHSPHY_TEST_DIN));

	if (oxnas->use_pllb) /* use pllb clock */
		FUNC6(oxnas->syscon, USB_CTRL_REGOFFSET, 0xffff,
				  USB_CLK_INTERNAL | USB_INT_CLK_PLLB);
	else /* use ref300 derived clock */
		FUNC6(oxnas->syscon, USB_CTRL_REGOFFSET, 0xffff,
				  USB_CLK_INTERNAL | USB_INT_CLK_REF300);

	if (oxnas->use_phya) {
		/* Configure USB PHYA as a host */
		FUNC5(oxnas->syscon, USB_CTRL_REGOFFSET, USBAMUX_DEVICE, 0);
	}

	/* Enable the clock to the USB block */
	FUNC4(oxnas->clk);
}