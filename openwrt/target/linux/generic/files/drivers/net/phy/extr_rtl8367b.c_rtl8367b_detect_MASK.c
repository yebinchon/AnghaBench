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
 int /*<<< orphan*/  RTL8367B_CHIP_MODE_REG ; 
 int /*<<< orphan*/  RTL8367B_CHIP_NUMBER_REG ; 
 int /*<<< orphan*/  RTL8367B_CHIP_VER_REG ; 
 int /*<<< orphan*/  RTL8367B_RTL_MAGIC_ID_REG ; 
 int /*<<< orphan*/  RTL8367B_RTL_MAGIC_ID_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366_smi*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi)
{
	const char *chip_name;
	u32 chip_num;
	u32 chip_ver;
	u32 chip_mode;
	int ret;

	/* TODO: improve chip detection */
	FUNC3(smi, RTL8367B_RTL_MAGIC_ID_REG,
			      RTL8367B_RTL_MAGIC_ID_VAL);

	ret = FUNC2(smi, RTL8367B_CHIP_NUMBER_REG, &chip_num);
	if (ret) {
		FUNC0(smi->parent, "unable to read %s register\n",
			"chip number");
		return ret;
	}

	ret = FUNC2(smi, RTL8367B_CHIP_VER_REG, &chip_ver);
	if (ret) {
		FUNC0(smi->parent, "unable to read %s register\n",
			"chip version");
		return ret;
	}

	ret = FUNC2(smi, RTL8367B_CHIP_MODE_REG, &chip_mode);
	if (ret) {
		FUNC0(smi->parent, "unable to read %s register\n",
			"chip mode");
		return ret;
	}

	switch (chip_ver) {
	case 0x1000:
		chip_name = "8367RB";
		break;
	case 0x1010:
		chip_name = "8367R-VB";
		break;
	default:
		FUNC0(smi->parent,
			"unknown chip num:%04x ver:%04x, mode:%04x\n",
			chip_num, chip_ver, chip_mode);
		return -ENODEV;
	}

	FUNC1(smi->parent, "RTL%s chip found\n", chip_name);

	return 0;
}