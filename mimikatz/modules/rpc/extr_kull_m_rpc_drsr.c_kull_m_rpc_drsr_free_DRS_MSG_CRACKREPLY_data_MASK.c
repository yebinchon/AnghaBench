#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  V1; } ;
typedef  int DWORD ;
typedef  TYPE_1__ DRS_MSG_CRACKREPLY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(DWORD nameCrackOutVersion, DRS_MSG_CRACKREPLY * reply)
{
	if(reply)
	{
		switch (nameCrackOutVersion)
		{
		case 1:
			FUNC1(&reply->V1);
			break;
		default:
			FUNC0(L"nameCrackOutVersion not valid (0x%08x - %u)\n", nameCrackOutVersion, nameCrackOutVersion);
			break;
		}
	}
}