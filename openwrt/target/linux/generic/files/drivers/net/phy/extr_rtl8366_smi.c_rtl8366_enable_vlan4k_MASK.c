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
struct rtl8366_smi {int vlan_enabled; int vlan4k_enabled; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* enable_vlan ) (struct rtl8366_smi*,int) ;int (* enable_vlan4k ) (struct rtl8366_smi*,int) ;} ;

/* Variables and functions */
 int FUNC0 (struct rtl8366_smi*,int) ; 
 int FUNC1 (struct rtl8366_smi*,int) ; 

__attribute__((used)) static int FUNC2(struct rtl8366_smi *smi, int enable)
{
	int err;

	if (enable) {
		err = smi->ops->enable_vlan(smi, enable);
		if (err)
			return err;

		smi->vlan_enabled = enable;
	}

	err = smi->ops->enable_vlan4k(smi, enable);
	if (err)
		return err;

	smi->vlan4k_enabled = enable;
	return 0;
}