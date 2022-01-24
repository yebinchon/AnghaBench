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
typedef  scalar_t__ u32 ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct oxnas_pcie {scalar_t__ card_reset; int /*<<< orphan*/  pcie_ctrl_offset; int /*<<< orphan*/  sys_ctrl; scalar_t__ haslink; scalar_t__ base; int /*<<< orphan*/  clk; int /*<<< orphan*/  hcsl_en; int /*<<< orphan*/  busclk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIE_DEVICE_TYPE_MASK ; 
 int /*<<< orphan*/  PCIE_DEVICE_TYPE_ROOT ; 
 int /*<<< orphan*/  PCIE_LTSSM ; 
 int /*<<< orphan*/  PCIE_READY_ENTR_L23 ; 
 scalar_t__ PCI_CONFIG_VERSION_DEVICEID ; 
 int /*<<< orphan*/  SYS_CTRL_HCSL_CTRL_REGOFFSET ; 
 scalar_t__ VERSION_ID_MAGIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static void FUNC12(struct platform_device *pdev,
			       struct oxnas_pcie *pcie)
{
	u32 version_id;
	int ret;

	FUNC1(pcie->busclk);

	/* reset PCIe cards use hard-wired gpio pin */
	if (pcie->card_reset >= 0 &&
	    !FUNC6(pcie->card_reset, 0)) {
		FUNC11();
		FUNC7(10);
		/* must tri-state the pin to pull it up */
		FUNC5(pcie->card_reset);
		FUNC11();
		FUNC7(100);
	}

	/* ToDo: use phy power-on port... */
	FUNC9(pcie->sys_ctrl, SYS_CTRL_HCSL_CTRL_REGOFFSET,
	                   FUNC0(pcie->hcsl_en), FUNC0(pcie->hcsl_en));

	/* core */
	ret = FUNC4(&pdev->dev);
	if (ret) {
		FUNC2(&pdev->dev, "core reset failed %d\n", ret);
		return;
	}

	/* Start PCIe core clocks */
	FUNC1(pcie->clk);

	version_id = FUNC8(pcie->base + PCI_CONFIG_VERSION_DEVICEID);
	FUNC3(&pdev->dev, "PCIe version/deviceID 0x%x\n", version_id);

	if (version_id != VERSION_ID_MAGIC) {
		FUNC3(&pdev->dev, "PCIe controller not found\n");
		pcie->haslink = 0;
		return;
	}

	/* allow entry to L23 state */
	FUNC10(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
	                  PCIE_READY_ENTR_L23, PCIE_READY_ENTR_L23);

	/* Set PCIe core into RootCore mode */
	FUNC10(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
	                  PCIE_DEVICE_TYPE_MASK, PCIE_DEVICE_TYPE_ROOT);
	FUNC11();

	/* Bring up the PCI core */
	FUNC10(pcie->sys_ctrl, pcie->pcie_ctrl_offset,
	                  PCIE_LTSSM, PCIE_LTSSM);
	FUNC11();
}