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
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8366RB_NUM_PORTS ; 
 int /*<<< orphan*/  RTL8366RB_PECR ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 struct rtl8366_smi* FUNC1 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC2(struct switch_dev *dev,
				    const struct switch_attr *attr,
				    struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC1(dev);
	u32 data;

	if (val->port_vlan >= RTL8366RB_NUM_PORTS)
		return -EINVAL;

	FUNC0(smi, RTL8366RB_PECR, &data);
	if (data & (1 << val->port_vlan))
		val->value.i = 1;
	else
		val->value.i = 0;

	return 0;
}