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
typedef  int u32 ;
struct TYPE_2__ {int i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int ports; } ;
struct switch_attr {int dummy; } ;
struct mii_bus {int dummy; } ;
struct ar7240sw {struct mii_bus* mii_bus; } ;

/* Variables and functions */
 int AR7240_PORT_CTRL_MIRROR_TX ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EINVAL ; 
 int FUNC1 (struct mii_bus*,int /*<<< orphan*/ ) ; 
 struct ar7240sw* FUNC2 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC3(struct switch_dev *dev, const struct switch_attr *attr,
		      struct switch_val *val)
{
	struct ar7240sw *as = FUNC2(dev);
	struct mii_bus *mii = as->mii_bus;

	u32 ctrl;

	int port = val->port_vlan;

	if (port >= dev->ports)
		return -EINVAL;

	ctrl = FUNC1(mii, FUNC0(port));

	if ((ctrl & AR7240_PORT_CTRL_MIRROR_TX) == AR7240_PORT_CTRL_MIRROR_TX)
		val->value.i = 1;
	else
		val->value.i = 0;

	return 0;
}