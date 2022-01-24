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
struct TYPE_2__ {int i; } ;
struct switch_val {int /*<<< orphan*/  port_vlan; TYPE_1__ value; } ;
struct switch_dev {int cpu_port; } ;
struct switch_attr {int dummy; } ;
struct rtl_priv {scalar_t__ do_cpu; } ;
struct rtl_phyregs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_VID_REPLACE ; 
 int RTL8306_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_CLR ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_IN ; 
 int /*<<< orphan*/  RTL_REG_EN_TAG_OUT ; 
 int /*<<< orphan*/  RTL_REG_VLAN_ENABLE ; 
 int /*<<< orphan*/  RTL_REG_VLAN_FILTER ; 
 int /*<<< orphan*/  RTL_REG_VLAN_TAG_AWARE ; 
 int /*<<< orphan*/  TAG_INSERT ; 
 int /*<<< orphan*/  VID_INSERT ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int /*<<< orphan*/ ,struct rtl_phyregs*) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*,int /*<<< orphan*/ ,struct rtl_phyregs*) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 
 struct rtl_priv* FUNC4 (struct switch_dev*) ; 

__attribute__((used)) static int
FUNC5(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
	struct rtl_priv *priv = FUNC4(dev);
	struct rtl_phyregs port;
	int en = val->value.i;
	int i;

	FUNC3(dev, RTL_REG_EN_TAG_OUT, en && priv->do_cpu);
	FUNC3(dev, RTL_REG_EN_TAG_IN, en && priv->do_cpu);
	FUNC3(dev, RTL_REG_EN_TAG_CLR, en && priv->do_cpu);
	FUNC3(dev, RTL_REG_VLAN_TAG_AWARE, en);
	if (en)
		FUNC3(dev, RTL_REG_VLAN_FILTER, en);

	for (i = 0; i < RTL8306_NUM_PORTS; i++) {
		if (i > 3)
			FUNC2(dev, val->port_vlan, &port);
		FUNC3(dev, FUNC0(i, NULL_VID_REPLACE), 1);
		FUNC3(dev, FUNC0(i, VID_INSERT), (en ? (i == dev->cpu_port ? 0 : 1) : 1));
		FUNC3(dev, FUNC0(i, TAG_INSERT), (en ? (i == dev->cpu_port ? 2 : 1) : 3));
		if (i > 3)
			FUNC1(dev, val->port_vlan, &port);
	}
	FUNC3(dev, RTL_REG_VLAN_ENABLE, en);

	return 0;
}