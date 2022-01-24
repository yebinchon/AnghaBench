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
typedef  int uint8_t ;
typedef  int uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int,int) ; 

int FUNC4(uint8_t port, uint32_t noTag, uint32_t dropUnda)
{
	uint32_t i;

	if(port >= 6){
		FUNC0("rtl8366s_setCPUPort: invalid port number\n");
		return -1;
	}

	/* reset register */
	for(i = 0; i < 6; i++)
	{
		if(FUNC3(i, 0)){
			FUNC0("rtl8366s_setCPUPort: rtl8366s_setCPUPortMask failed\n");
			return -1;
		}
	}

	if(FUNC3(port, 1)){
		FUNC0("rtl8366s_setCPUPort: rtl8366s_setCPUPortMask failed\n");
		return -1;
	}

	if(FUNC1(noTag)){
		FUNC0("rtl8366s_setCPUPort: rtl8366s_setCPUDisableInsTag fail\n");
		return -1;
	}

	if(FUNC2(dropUnda)){
		FUNC0("rtl8366s_setCPUPort: rtl8366s_setCPUDropUnda fail\n");
		return -1;
	}

	return 0;
}