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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 

NTSTATUS FUNC6(int argc, wchar_t * argv[])
{
	HANDLE hEventLog;
	PCWCHAR szLog;
	DWORD nbEvents;
	FUNC5(argc, argv, L"log", &szLog, L"Security");

	FUNC4(L"Using \"%s\" event log :\n", szLog);
	if((hEventLog = FUNC2(NULL, szLog)))
	{
		if(FUNC1(hEventLog, &nbEvents))
			FUNC4(L"- %u event(s)\n", nbEvents);
		if(FUNC0(hEventLog, NULL))
			FUNC4(L"- Cleared !\n");
		else FUNC3(L"ClearEventLog");
		if(FUNC1(hEventLog, &nbEvents))
			FUNC4(L"- %u event(s)\n", nbEvents);
	}
	else FUNC3(L"OpenEventLog");

	return STATUS_SUCCESS;
}