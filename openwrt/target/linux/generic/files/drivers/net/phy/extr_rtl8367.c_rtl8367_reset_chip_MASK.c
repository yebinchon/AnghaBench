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
 int ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC0 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int RTL8367_CHIP_RESET_HW ; 
 int /*<<< orphan*/  RTL8367_CHIP_RESET_REG ; 
 int RTL8367_RESET_DELAY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi)
{
	int timeout = 10;
	int err;
	u32 data;

	FUNC1(smi, RTL8367_CHIP_RESET_REG, RTL8367_CHIP_RESET_HW);
	FUNC3(RTL8367_RESET_DELAY);

	do {
		FUNC0(smi, RTL8367_CHIP_RESET_REG, &data);
		if (!(data & RTL8367_CHIP_RESET_HW))
			break;

		FUNC3(1);
	} while (--timeout);

	if (!timeout) {
		FUNC2(smi->parent, "chip reset timed out\n");
		return -ETIMEDOUT;
	}

	return 0;
}