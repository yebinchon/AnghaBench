#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct usb_hcd {int has_tt; struct reset_control* regs; int /*<<< orphan*/  rsrc_len; int /*<<< orphan*/  rsrc_start; } ;
struct resource {int /*<<< orphan*/  start; } ;
struct reset_control {int dummy; } ;
struct TYPE_6__ {scalar_t__ coherent_dma_mask; scalar_t__* dma_mask; struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct oxnas_hcd {struct reset_control* clk; struct reset_control* refsrc; struct reset_control* phyref; struct reset_control* rst_phyb; struct reset_control* rst_phya; struct reset_control* rst_host; void* use_pllb; struct reset_control* syscon; void* use_phya; } ;
struct ehci_hcd {struct reset_control* caps; scalar_t__ priv; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EBUSY ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IRQF_SHARED ; 
 scalar_t__ FUNC1 (struct reset_control*) ; 
 int FUNC2 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC3 (struct reset_control*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 struct reset_control* FUNC6 (TYPE_1__*,struct resource*) ; 
 struct reset_control* FUNC7 (TYPE_1__*,char*) ; 
 struct ehci_hcd* FUNC8 (struct usb_hcd*) ; 
 int FUNC9 (struct device_node*,int /*<<< orphan*/ ) ; 
 int FUNC10 (struct device_node*,int /*<<< orphan*/ ,struct resource*) ; 
 void* FUNC11 (struct device_node*,char*) ; 
 void* FUNC12 (struct device_node*,char*) ; 
 int /*<<< orphan*/  oxnas_hc_driver ; 
 int /*<<< orphan*/  FUNC13 (struct resource*) ; 
 int /*<<< orphan*/  FUNC14 (struct oxnas_hcd*) ; 
 int /*<<< orphan*/  FUNC15 (struct oxnas_hcd*) ; 
 struct reset_control* FUNC16 (struct device_node*,char*) ; 
 int FUNC17 (struct usb_hcd*,int,int /*<<< orphan*/ ) ; 
 struct usb_hcd* FUNC18 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (struct usb_hcd*) ; 

__attribute__((used)) static int FUNC21(struct platform_device *ofdev)
{
	struct device_node *np = ofdev->dev.of_node;
	struct usb_hcd *hcd;
	struct ehci_hcd *ehci;
	struct resource res;
	struct oxnas_hcd *oxnas;
	int irq, err;
	struct reset_control *rstc;

	if (FUNC19())
		return -ENODEV;

	if (!ofdev->dev.dma_mask)
		ofdev->dev.dma_mask = &ofdev->dev.coherent_dma_mask;
	if (!ofdev->dev.coherent_dma_mask)
		ofdev->dev.coherent_dma_mask = FUNC0(32);

	hcd = FUNC18(&oxnas_hc_driver,	&ofdev->dev,
					FUNC5(&ofdev->dev));
	if (!hcd)
		return -ENOMEM;

	err = FUNC10(np, 0, &res);
	if (err)
		goto err_res;

	hcd->rsrc_start = res.start;
	hcd->rsrc_len = FUNC13(&res);

	hcd->regs = FUNC6(&ofdev->dev, &res);
	if (FUNC1(hcd->regs)) {
		FUNC4(&ofdev->dev, "devm_ioremap_resource failed\n");
		err = FUNC2(hcd->regs);
		goto err_ioremap;
	}

	oxnas = (struct oxnas_hcd *)FUNC8(hcd)->priv;

	oxnas->use_pllb = FUNC12(np, "oxsemi,ehci_use_pllb");
	oxnas->use_phya = FUNC12(np, "oxsemi,ehci_use_phya");

	oxnas->syscon = FUNC16(np, "oxsemi,sys-ctrl");
	if (FUNC1(oxnas->syscon)) {
		err = FUNC2(oxnas->syscon);
		goto err_syscon;
	}

	oxnas->clk = FUNC11(np, "usb");
	if (FUNC1(oxnas->clk)) {
		err = FUNC2(oxnas->clk);
		goto err_clk;
	}

	if (oxnas->use_pllb) {
		oxnas->refsrc = FUNC11(np, "refsrc");
		if (FUNC1(oxnas->refsrc)) {
			err = FUNC2(oxnas->refsrc);
			goto err_refsrc;
		}
		oxnas->phyref = FUNC11(np, "phyref");
		if (FUNC1(oxnas->refsrc)) {
			err = FUNC2(oxnas->refsrc);
			goto err_phyref;
		}

	} else {
		oxnas->refsrc = NULL;
		oxnas->phyref = NULL;
	}

	rstc = FUNC7(&ofdev->dev, "host");
	if (FUNC1(rstc)) {
		err = FUNC2(rstc);
		goto err_rst;
	}
	oxnas->rst_host = rstc;

	rstc = FUNC7(&ofdev->dev, "phya");
	if (FUNC1(rstc)) {
		err = FUNC2(rstc);
		goto err_rst;
	}
	oxnas->rst_phya = rstc;

	rstc = FUNC7(&ofdev->dev, "phyb");
	if (FUNC1(rstc)) {
		err = FUNC2(rstc);
		goto err_rst;
	}
	oxnas->rst_phyb = rstc;

	irq = FUNC9(np, 0);
	if (!irq) {
		FUNC4(&ofdev->dev, "irq_of_parse_and_map failed\n");
		err = -EBUSY;
		goto err_irq;
	}

	hcd->has_tt = 1;
	ehci = FUNC8(hcd);
	ehci->caps = hcd->regs;

	FUNC14(oxnas);

	err = FUNC17(hcd, irq, IRQF_SHARED);
	if (err)
		goto err_hcd;

	return 0;

err_hcd:
	FUNC15(oxnas);
err_irq:
err_rst:
	if (oxnas->phyref)
		FUNC3(oxnas->phyref);
err_phyref:
	if (oxnas->refsrc)
		FUNC3(oxnas->refsrc);
err_refsrc:
	FUNC3(oxnas->clk);
err_syscon:
err_clk:
err_ioremap:
err_res:
	FUNC20(hcd);

	return err;
}