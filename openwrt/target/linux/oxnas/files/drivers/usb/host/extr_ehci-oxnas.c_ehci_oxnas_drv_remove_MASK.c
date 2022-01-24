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
struct usb_hcd {int dummy; } ;
struct platform_device {int dummy; } ;
struct oxnas_hcd {int /*<<< orphan*/  clk; int /*<<< orphan*/  refsrc; int /*<<< orphan*/  phyref; scalar_t__ use_pllb; } ;
struct TYPE_2__ {scalar_t__ priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (struct usb_hcd*) ; 
 struct usb_hcd* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct usb_hcd*) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct usb_hcd *hcd = FUNC3(pdev);
	struct oxnas_hcd *oxnas = (struct oxnas_hcd *)FUNC2(hcd)->priv;

	FUNC5(hcd);
	if (oxnas->use_pllb) {
		FUNC0(oxnas->phyref);
		FUNC1(oxnas->phyref);
		FUNC0(oxnas->refsrc);
		FUNC1(oxnas->refsrc);
	}
	FUNC0(oxnas->clk);
	FUNC4(hcd);

	return 0;
}