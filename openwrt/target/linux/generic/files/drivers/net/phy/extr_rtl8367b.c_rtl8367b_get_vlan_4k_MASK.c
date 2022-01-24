#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ u32 ;
struct rtl8366_vlan_4k {scalar_t__ fid; scalar_t__ untag; scalar_t__ member; scalar_t__ vid; } ;
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__*) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ RTL8367B_NUM_VIDS ; 
 int /*<<< orphan*/  RTL8367B_TA_ADDR_REG ; 
 scalar_t__ RTL8367B_TA_CTRL_CVLAN_READ ; 
 int /*<<< orphan*/  RTL8367B_TA_CTRL_REG ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ RTL8367B_TA_VLAN0_MEMBER_MASK ; 
 scalar_t__ RTL8367B_TA_VLAN0_MEMBER_SHIFT ; 
 scalar_t__ RTL8367B_TA_VLAN0_UNTAG_MASK ; 
 scalar_t__ RTL8367B_TA_VLAN0_UNTAG_SHIFT ; 
 scalar_t__ RTL8367B_TA_VLAN1_FID_MASK ; 
 scalar_t__ RTL8367B_TA_VLAN1_FID_SHIFT ; 
 int RTL8367B_TA_VLAN_NUM_WORDS ; 
 int /*<<< orphan*/  FUNC4 (struct rtl8366_vlan_4k*,char,int) ; 

__attribute__((used)) static int FUNC5(struct rtl8366_smi *smi, u32 vid,
				struct rtl8366_vlan_4k *vlan4k)
{
	u32 data[RTL8367B_TA_VLAN_NUM_WORDS];
	int err;
	int i;

	FUNC4(vlan4k, '\0', sizeof(struct rtl8366_vlan_4k));

	if (vid >= RTL8367B_NUM_VIDS)
		return -EINVAL;

	/* write VID */
	FUNC2(smi, RTL8367B_TA_ADDR_REG, vid);

	/* write table access control word */
	FUNC2(smi, RTL8367B_TA_CTRL_REG, RTL8367B_TA_CTRL_CVLAN_READ);

	for (i = 0; i < FUNC0(data); i++)
		FUNC1(smi, FUNC3(i), &data[i]);

	vlan4k->vid = vid;
	vlan4k->member = (data[0] >> RTL8367B_TA_VLAN0_MEMBER_SHIFT) &
			 RTL8367B_TA_VLAN0_MEMBER_MASK;
	vlan4k->untag = (data[0] >> RTL8367B_TA_VLAN0_UNTAG_SHIFT) &
			RTL8367B_TA_VLAN0_UNTAG_MASK;
	vlan4k->fid = (data[1] >> RTL8367B_TA_VLAN1_FID_SHIFT) &
		      RTL8367B_TA_VLAN1_FID_MASK;

	return 0;
}