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
typedef  int u32 ;
struct rtl8366_smi {int /*<<< orphan*/  parent; } ;

/* Variables and functions */
 int ENODEV ; 
#define  RTL8366S_CHIP_ID_8366 128 
 int /*<<< orphan*/  RTL8366S_CHIP_ID_REG ; 
 int /*<<< orphan*/  RTL8366S_CHIP_VERSION_CTRL_REG ; 
 int RTL8366S_CHIP_VERSION_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 int FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static int FUNC3(struct rtl8366_smi *smi)
{
	u32 chip_id = 0;
	u32 chip_ver = 0;
	int ret;

	ret = FUNC2(smi, RTL8366S_CHIP_ID_REG, &chip_id);
	if (ret) {
		FUNC0(smi->parent, "unable to read chip id\n");
		return ret;
	}

	switch (chip_id) {
	case RTL8366S_CHIP_ID_8366:
		break;
	default:
		FUNC0(smi->parent, "unknown chip id (%04x)\n", chip_id);
		return -ENODEV;
	}

	ret = FUNC2(smi, RTL8366S_CHIP_VERSION_CTRL_REG,
				   &chip_ver);
	if (ret) {
		FUNC0(smi->parent, "unable to read chip version\n");
		return ret;
	}

	FUNC1(smi->parent, "RTL%04x ver. %u chip found\n",
		 chip_id, chip_ver & RTL8366S_CHIP_VERSION_MASK);

	return 0;
}