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
struct switch_dev {int /*<<< orphan*/  name; int /*<<< orphan*/ * ops; int /*<<< orphan*/  vlans; int /*<<< orphan*/  ports; int /*<<< orphan*/  cpu_port; int /*<<< orphan*/  alias; } ;
struct gsw_mt753x {TYPE_1__* dev; int /*<<< orphan*/  cpu_port; int /*<<< orphan*/  name; struct switch_dev swdev; } ;
struct device_node {int dummy; } ;
struct TYPE_2__ {struct device_node* of_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  MT753X_DFL_CPU_PORT ; 
 int /*<<< orphan*/  MT753X_NUM_PORTS ; 
 int /*<<< orphan*/  MT753X_NUM_VLANS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*) ; 
 int /*<<< orphan*/  mt753x_swdev_ops ; 
 scalar_t__ FUNC2 (struct device_node*,char*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct switch_dev*,int /*<<< orphan*/ *) ; 

int FUNC4(struct gsw_mt753x *gsw)
{
	struct device_node *np = gsw->dev->of_node;
	struct switch_dev *swdev;
	int ret;

	if (FUNC2(np, "mediatek,cpuport", &gsw->cpu_port))
		gsw->cpu_port = MT753X_DFL_CPU_PORT;

	swdev = &gsw->swdev;

	swdev->name = gsw->name;
	swdev->alias = gsw->name;
	swdev->cpu_port = gsw->cpu_port;
	swdev->ports = MT753X_NUM_PORTS;
	swdev->vlans = MT753X_NUM_VLANS;
	swdev->ops = &mt753x_swdev_ops;

	ret = FUNC3(swdev, NULL);
	if (ret) {
		FUNC0(gsw->dev, "Failed to register switch %s\n",
			   swdev->name);
		return ret;
	}

	FUNC1(swdev);

	return 0;
}