#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; int /*<<< orphan*/  alias; } ;
struct b53_device {TYPE_2__ sw_dev; int /*<<< orphan*/  core_rev; int /*<<< orphan*/  chip_id; TYPE_1__* pdata; int /*<<< orphan*/  enabled_ports; } ;
struct TYPE_3__ {int /*<<< orphan*/  alias; int /*<<< orphan*/  enabled_ports; int /*<<< orphan*/  chip_id; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct b53_device*) ; 
 int FUNC1 (struct b53_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

int FUNC4(struct b53_device *dev)
{
	int ret;

	if (dev->pdata) {
		dev->chip_id = dev->pdata->chip_id;
		dev->enabled_ports = dev->pdata->enabled_ports;
		dev->sw_dev.alias = dev->pdata->alias;
	}

	if (!dev->chip_id && FUNC0(dev))
		return -EINVAL;

	ret = FUNC1(dev);
	if (ret)
		return ret;

	FUNC2("found switch: %s, rev %i\n", dev->sw_dev.name, dev->core_rev);

	return FUNC3(&dev->sw_dev, NULL);
}