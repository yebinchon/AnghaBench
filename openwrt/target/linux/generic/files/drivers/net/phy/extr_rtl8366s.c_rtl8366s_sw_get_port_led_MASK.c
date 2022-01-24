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
 int /*<<< orphan*/  RTL8366S_LED_CTRL_REG ; 
 int RTL8366S_NUM_LEDGROUPS ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 struct rtl8366_smi* FUNC1 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC2(struct switch_dev *dev,
				    const struct switch_attr *attr,
				    struct switch_val *val)
{
	struct rtl8366_smi *smi = FUNC1(dev);
	u32 data = 0;

	if (val->port_vlan >= RTL8366S_NUM_LEDGROUPS)
		return -EINVAL;

	FUNC0(smi, RTL8366S_LED_CTRL_REG, &data);
	val->value.i = (data >> (val->port_vlan * 4)) & 0x000F;

	return 0;
}