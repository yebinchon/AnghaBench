#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u16 ;
struct resource {int dummy; } ;
struct TYPE_3__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct mt7620_gsw {int /*<<< orphan*/  irq; scalar_t__ ephy_base; void* port4; TYPE_1__* dev; int /*<<< orphan*/  base; } ;
struct device_node {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* PORT4_EPHY ; 
 void* PORT4_EXT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct resource*) ; 
 struct mt7620_gsw* FUNC3 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*,char*,char const**) ; 
 scalar_t__ FUNC5 (struct device_node*,char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC7 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct platform_device*,struct mt7620_gsw*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(struct platform_device *pdev)
{
	struct resource *res = FUNC7(pdev, IORESOURCE_MEM, 0);
	const char *port4 = NULL;
	struct mt7620_gsw *gsw;
	struct device_node *np = pdev->dev.of_node;
	u16 val;

	gsw = FUNC3(&pdev->dev, sizeof(struct mt7620_gsw), GFP_KERNEL);
	if (!gsw)
		return -ENOMEM;

	gsw->base = FUNC2(&pdev->dev, res);
	if (FUNC0(gsw->base))
		return FUNC1(gsw->base);

	gsw->dev = &pdev->dev;

	FUNC4(np, "mediatek,port4", &port4);
	if (port4 && !FUNC9(port4, "ephy"))
		gsw->port4 = PORT4_EPHY;
	else if (port4 && !FUNC9(port4, "gmac"))
		gsw->port4 = PORT4_EXT;
	else
		gsw->port4 = PORT4_EPHY;

	if (FUNC5(np, "mediatek,ephy-base-address", &val) == 0)
		gsw->ephy_base = val;
	else
		gsw->ephy_base = 0;

	gsw->irq = FUNC6(pdev, 0);

	FUNC8(pdev, gsw);

	return 0;
}