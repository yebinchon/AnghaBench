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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int /*<<< orphan*/  HighPart; int /*<<< orphan*/  LowPart; } ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_1__ LUID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC4(int argc, wchar_t * argv[])
{
	NTSTATUS status = STATUS_INVALID_PARAMETER;
	LUID luid;
	if(argc)
	{
		if(FUNC0(NULL, argv[0], &luid))
		{
			if(!luid.HighPart)
				status = FUNC3(luid.LowPart);
			else FUNC1(L"LUID high part is %u\n", luid.HighPart);
		}
		else FUNC2(L"LookupPrivilegeValue");
	}
	else FUNC1(L"Missing \'name\'\n");
	return status;
}