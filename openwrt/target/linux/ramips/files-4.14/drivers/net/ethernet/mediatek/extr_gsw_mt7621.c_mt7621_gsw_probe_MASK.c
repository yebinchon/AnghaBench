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
struct resource {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;
struct mt7620_gsw {int /*<<< orphan*/  irq; int /*<<< orphan*/ * dev; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  IORESOURCE_MEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct resource*) ; 
 struct mt7620_gsw* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ ) ; 
 struct resource* FUNC5 (struct platform_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct platform_device*,struct mt7620_gsw*) ; 

__attribute__((used)) static int FUNC7(struct platform_device *pdev)
{
	struct resource *res = FUNC5(pdev, IORESOURCE_MEM, 0);
	struct mt7620_gsw *gsw;

	gsw = FUNC3(&pdev->dev, sizeof(struct mt7620_gsw), GFP_KERNEL);
	if (!gsw)
		return -ENOMEM;

	gsw->base = FUNC2(&pdev->dev, res);
	if (FUNC0(gsw->base))
		return FUNC1(gsw->base);

	gsw->dev = &pdev->dev;
	gsw->irq = FUNC4(pdev, 0);

	FUNC6(pdev, gsw);

	return 0;
}