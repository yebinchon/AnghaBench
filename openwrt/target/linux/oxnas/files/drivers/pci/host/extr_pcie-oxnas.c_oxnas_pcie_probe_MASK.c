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
struct TYPE_6__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct oxnas_pcie {int haslink; scalar_t__ card_reset; int /*<<< orphan*/  sys_ctrl; int /*<<< orphan*/  lock; struct platform_device* pdev; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GPIOF_DIR_IN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 struct oxnas_pcie* FUNC5 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct oxnas_pcie*) ; 
 int /*<<< orphan*/  FUNC9 (struct platform_device*,struct oxnas_pcie*) ; 
 int FUNC10 (struct platform_device*,struct oxnas_pcie*,struct device_node*) ; 
 scalar_t__ FUNC11 (struct oxnas_pcie*) ; 
 int FUNC12 (struct platform_device*,struct device_node*,struct oxnas_pcie*) ; 
 int FUNC13 (struct platform_device*,struct oxnas_pcie*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static int FUNC16(struct platform_device *pdev)
{
	struct oxnas_pcie *pcie;
	struct device_node *np = pdev->dev.of_node;
	int ret;

	pcie = FUNC5(&pdev->dev, sizeof(struct oxnas_pcie),
			    GFP_KERNEL);
	if (!pcie)
		return -ENOMEM;

	pcie->pdev = pdev;
	pcie->haslink = 1;
	FUNC14(&pcie->lock);

	pcie->sys_ctrl = FUNC15("oxsemi,ox820-sys-ctrl");
	if (FUNC0(pcie->sys_ctrl))
		return FUNC1(pcie->sys_ctrl);

	ret = FUNC10(pdev, pcie, np);
	if (ret)
		return ret;
	if (pcie->card_reset >= 0) {
		ret = FUNC7(pcie->card_reset, GPIOF_DIR_IN,
				       FUNC4(&pdev->dev));
		if (ret) {
			FUNC2(&pdev->dev, "cannot request gpio pin %d\n",
				pcie->card_reset);
			return ret;
		}
	}

	ret = FUNC12(pdev, np, pcie);
	if (ret) {
		FUNC2(&pdev->dev, "cannot map registers\n");
		goto err_free_gpio;
	}

	ret = FUNC13(pdev, pcie);
	if (ret)
		goto err_free_gpio;

	/* if hw not found, haslink cleared */
	FUNC9(pdev, pcie);

	if (pcie->haslink && FUNC11(pcie)) {
		pcie->haslink = 1;
		FUNC3(&pdev->dev, "link up\n");
	} else {
		pcie->haslink = 0;
		FUNC3(&pdev->dev, "link down\n");
	}
	/* should we register our controller even when pcie->haslink is 0 ? */
	/* register the controller with framework */
	FUNC8(&pdev->dev, pcie);

	return 0;

err_free_gpio:
	if (pcie->card_reset)
		FUNC6(pcie->card_reset);

	return ret;
}