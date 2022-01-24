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
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
#define  RTL8366S_MODEL_8366SR 128 
 int /*<<< orphan*/  RTL8366S_MODEL_ID_REG ; 
 int const RTL8366S_PHY_ACCESS_CTRL_REG ; 
 int const RTL8366S_PHY_CTRL_WRITE ; 
 int RTL8366S_PHY_NO_MAX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int const,int const) ; 
 scalar_t__ FUNC3 (int,int) ; 
 scalar_t__ FUNC4 (int,int) ; 

int FUNC5(uint32_t greenFeature, uint32_t powerSaving)
{
    uint32_t phyNum, i;
    uint16_t regData;

	const uint16_t greenSettings[][2] =
	{
		{0xBE5B,0x3500},
		{0xBE5C,0xB975},
		{0xBE5D,0xB9B9},
		{0xBE77,0xA500},
		{0xBE78,0x5A78},
		{0xBE79,0x6478}
	};

    if (FUNC1(RTL8366S_MODEL_ID_REG, &regData))
        return -1;

	switch (regData)
	{
		case 0x0000:
			for (i = 0; i < 6; i++) {
				if (FUNC2(RTL8366S_PHY_ACCESS_CTRL_REG, RTL8366S_PHY_CTRL_WRITE))
					return -1;
				if (FUNC2(greenSettings[i][0], greenSettings[i][1]))
					return -1;
			}
			break;

		case RTL8366S_MODEL_8366SR:
			if (FUNC2(RTL8366S_PHY_ACCESS_CTRL_REG, RTL8366S_PHY_CTRL_WRITE))
				return -1;
			if (FUNC2(greenSettings[0][0], greenSettings[0][1]))
				return -1;
			break;

		default:
			FUNC0("rtl8366s_initChip: unsupported chip found!\n");
			return -1;
	}

    if (FUNC3(greenFeature, powerSaving))
        return -1;

    for (phyNum = 0; phyNum <= RTL8366S_PHY_NO_MAX; phyNum++) {
        if (FUNC4(phyNum, powerSaving))
            return -1;
    }

    return 0;
}