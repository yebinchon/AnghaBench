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
struct TYPE_2__ {int /*<<< orphan*/  i; } ;
struct switch_val {int port_vlan; TYPE_1__ value; } ;
struct switch_dev {int dummy; } ;
struct switch_attr {int id; int ofs; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct switch_dev*,int) ; 
 int /*<<< orphan*/  rtl_regs ; 

__attribute__((used)) static int
FUNC2(struct switch_dev *dev, const struct switch_attr *attr, struct switch_val *val)
{
	int idx = attr->id + (val->port_vlan * attr->ofs);

	if (idx >= FUNC0(rtl_regs))
		return -EINVAL;

	val->value.i = FUNC1(dev, idx);
	return 0;
}