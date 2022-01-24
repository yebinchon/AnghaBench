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
typedef  int ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  hDevice; struct TYPE_4__* next; } ;
typedef  TYPE_1__* PSR98_DEVICE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__**,int*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC5(int argc, wchar_t * argv[])
{
	PSR98_DEVICE devices, cur;
	ULONG count, duration = 9;
	if(argc)
		duration = FUNC4(argv[0], NULL, 0);
	if(FUNC3(&devices, &count))
	{
		for(cur = devices; cur; cur = cur->next)
			FUNC1(cur->hDevice, (BYTE) duration);
		FUNC2(devices);
	}
	else FUNC0(L"No device found\n");
	return STATUS_SUCCESS;
}