#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
typedef  size_t UCHAR ;
struct TYPE_4__ {int /*<<< orphan*/  hDevice; } ;
typedef  TYPE_1__* PSR98_DEVICE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__**,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC6(ULONG *blocks, UCHAR nb)
{
	BOOL status = FALSE;
	PSR98_DEVICE devices;
	ULONG count;
	UCHAR i;
	if(FUNC4(&devices, &count))
	{
		if(count == 1)
		{
			FUNC2(L" * T5577 blocks:\n");
			for(i = 0; i < nb; i++)
				FUNC2(L"   [%hhu] 0x%08x\n", i, blocks[i]);
			FUNC2(L" * Write operations...\n");
			for(i = 0, status = TRUE; (i < nb) && status; i++)
				status &= FUNC5(devices->hDevice, 0, i, FUNC1(blocks[i]), FALSE, 0);
		}
		else FUNC0(L"Reader device is not unique (%u)\n", count);
		FUNC3(devices);
	}
	return status;
}