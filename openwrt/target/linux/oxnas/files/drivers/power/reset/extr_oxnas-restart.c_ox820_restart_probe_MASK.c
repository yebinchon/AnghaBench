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
struct regmap {int dummy; } ;
struct device {int /*<<< orphan*/  of_node; } ;
struct platform_device {struct device dev; } ;
struct TYPE_2__ {int priority; int /*<<< orphan*/  notifier_call; } ;
struct oxnas_restart_context {TYPE_1__ restart_handler; struct regmap* sys_ctrl; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (struct regmap*) ; 
 int FUNC1 (struct regmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int) ; 
 struct oxnas_restart_context* FUNC3 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ox820_restart_handle ; 
 int FUNC4 (TYPE_1__*) ; 
 struct regmap* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct platform_device *pdev)
{
	struct oxnas_restart_context *ctx;
	struct regmap *sys_ctrl;
	struct device *dev = &pdev->dev;
	int err = 0;

	sys_ctrl = FUNC5(pdev->dev.of_node);
	if (FUNC0(sys_ctrl))
		return FUNC1(sys_ctrl);

	ctx = FUNC3(&pdev->dev, sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	ctx->sys_ctrl = sys_ctrl;
	ctx->restart_handler.notifier_call = ox820_restart_handle;
	ctx->restart_handler.priority = 192;
	err = FUNC4(&ctx->restart_handler);
	if (err)
		FUNC2(dev, "can't register restart notifier (err=%d)\n", err);

	return err;
}