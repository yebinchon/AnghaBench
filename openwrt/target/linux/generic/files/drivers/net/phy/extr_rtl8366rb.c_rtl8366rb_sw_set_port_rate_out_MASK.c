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
struct switch_val {scalar_t__ port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int dummy; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int RTL8366RB_BDTH_REG_DEFAULT ; 
 int RTL8366RB_BDTH_SW_MAX ; 
 int RTL8366RB_BDTH_UNIT ; 
 int /*<<< orphan*/  RTL8366RB_EB_BDTH_MASK ; 
 int /*<<< orphan*/  RTL8366RB_EB_PREIFG_MASK ; 
 int RTL8366RB_EB_PREIFG_OFFSET ; 
 int /*<<< orphan*/  RTL8366RB_EB_PREIFG_REG ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ RTL8366RB_NUM_PORTS ; 
 int RTL8366RB_QOS_DEFAULT_PREIFG ; 
 int FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct rtl8366_smi* FUNC2 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC3(struct switch_dev *dev,
				    const struct switch_attr *attr,
				    struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC2(dev);

	if (val->port_vlan >= RTL8366RB_NUM_PORTS)
		return -EINVAL;

	FUNC1(smi, RTL8366RB_EB_PREIFG_REG,
		RTL8366RB_EB_PREIFG_MASK,
		(RTL8366RB_QOS_DEFAULT_PREIFG << RTL8366RB_EB_PREIFG_OFFSET));

	if (val->value.i > 0 && val->value.i < RTL8366RB_BDTH_SW_MAX)
		val->value.i = (val->value.i - 1) / RTL8366RB_BDTH_UNIT;
	else
		val->value.i = RTL8366RB_BDTH_REG_DEFAULT;

	return FUNC1(smi, FUNC0(val->port_vlan),
			RTL8366RB_EB_BDTH_MASK, val->value.i );

}