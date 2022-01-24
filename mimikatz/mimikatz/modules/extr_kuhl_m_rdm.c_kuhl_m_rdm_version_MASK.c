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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  hDevice; int /*<<< orphan*/  id; struct TYPE_4__* next; } ;
typedef  int /*<<< orphan*/  PSTR ;
typedef  TYPE_1__* PRDM_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(int argc, wchar_t * argv[])
{
	PRDM_DEVICE devices, cur;
	ULONG count;
	PSTR version;

	if(FUNC4(&devices, &count))
	{
		for(cur = devices; cur; cur = cur->next)
		{
			FUNC2(L"[%3u] ", cur->id);
			if(FUNC5(cur->hDevice, &version))
			{
				FUNC2(L"%S\n", version);
				FUNC0(version);
			}
		}
		FUNC3(devices);
	}
	else FUNC1(L"No device found\n");
	return STATUS_SUCCESS;
}