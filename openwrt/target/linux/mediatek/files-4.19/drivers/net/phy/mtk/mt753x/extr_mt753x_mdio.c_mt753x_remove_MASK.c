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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct gsw_mt753x {scalar_t__ irq; scalar_t__ reset_pin; int /*<<< orphan*/  irq_worker; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct gsw_mt753x*) ; 
 int /*<<< orphan*/  FUNC3 (struct gsw_mt753x*) ; 
 struct gsw_mt753x* FUNC4 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct gsw_mt753x *gsw = FUNC4(pdev);

	if (gsw->irq >= 0)
		FUNC0(&gsw->irq_worker);

	if (gsw->reset_pin >= 0)
		FUNC1(&pdev->dev, gsw->reset_pin);

#ifdef CONFIG_SWCONFIG
	mt753x_swconfig_destroy(gsw);
#endif

	FUNC2(gsw);

	FUNC5(pdev, NULL);

	return 0;
}