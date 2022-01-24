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
struct TYPE_2__ {struct nxp_74hc153_platform_data* platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;
struct nxp_74hc153_platform_data {int /*<<< orphan*/  gpio_pin_s0; int /*<<< orphan*/  gpio_pin_s1; int /*<<< orphan*/  gpio_pin_1y; int /*<<< orphan*/  gpio_pin_2y; } ;
struct nxp_74hc153_chip {int /*<<< orphan*/  gpio_chip; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nxp_74hc153_chip*) ; 
 struct nxp_74hc153_chip* FUNC3 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct nxp_74hc153_chip *nxp = FUNC3(pdev);
	struct nxp_74hc153_platform_data *pdata = pdev->dev.platform_data;

	if (nxp) {
		FUNC1(&nxp->gpio_chip);
		FUNC0(pdata->gpio_pin_2y);
		FUNC0(pdata->gpio_pin_1y);
		FUNC0(pdata->gpio_pin_s1);
		FUNC0(pdata->gpio_pin_s0);

		FUNC2(nxp);
		FUNC4(pdev, NULL);
	}

	return 0;
}