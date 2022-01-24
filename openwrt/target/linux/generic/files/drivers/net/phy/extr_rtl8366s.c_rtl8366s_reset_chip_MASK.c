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
struct rtl8366_smi {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int RTL8366S_CHIP_CTRL_RESET_HW ; 
 int /*<<< orphan*/  RTL8366S_RESET_CTRL_REG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC3 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct rtl8366_smi *smi)
{
	int timeout = 10;
	u32 data;

	FUNC3(smi, RTL8366S_RESET_CTRL_REG,
				    RTL8366S_CHIP_CTRL_RESET_HW);
	do {
		FUNC0(1);
		if (FUNC2(smi, RTL8366S_RESET_CTRL_REG, &data))
			return -EIO;

		if (!(data & RTL8366S_CHIP_CTRL_RESET_HW))
			break;
	} while (--timeout);

	if (!timeout) {
		FUNC1("Timeout waiting for the switch to reset\n");
		return -EIO;
	}

	return 0;
}