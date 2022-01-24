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
typedef  char* PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int KUHL_M_PROCESS_GENERICOPERATION ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
#define  KUHL_M_PROCESS_GENERICOPERATION_RESUME 130 
#define  KUHL_M_PROCESS_GENERICOPERATION_SUSPEND 129 
#define  KUHL_M_PROCESS_GENERICOPERATION_TERMINATE 128 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ PROCESS_SUSPEND_RESUME ; 
 scalar_t__ PROCESS_TERMINATE ; 
 int /*<<< orphan*/  STATUS_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,scalar_t__) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,char*,char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[], KUHL_M_PROCESS_GENERICOPERATION operation)
{
	HANDLE hProcess;
	NTSTATUS status = STATUS_NOT_FOUND;
	DWORD pid = 0, access;
	PCWCHAR szPid, szText;

	switch(operation)
	{
	case KUHL_M_PROCESS_GENERICOPERATION_TERMINATE:
		access = PROCESS_TERMINATE;
		szText = L"NtTerminateProcess";
		break;
	case KUHL_M_PROCESS_GENERICOPERATION_SUSPEND:
		access = PROCESS_SUSPEND_RESUME;
		szText = L"NtSuspendProcess";
		break;
	case KUHL_M_PROCESS_GENERICOPERATION_RESUME:
		access = PROCESS_SUSPEND_RESUME;
		szText = L"NtResumeProcess";
		break;
	default:
		return status;
	}

	if(FUNC9(argc, argv, L"pid", &szPid, NULL))
		pid = FUNC10(szPid, NULL, 0);
	
	if(pid)
	{
		if((hProcess = FUNC5(access, FALSE, pid)))
		{
			switch(operation)
			{
			case KUHL_M_PROCESS_GENERICOPERATION_TERMINATE:
				status = FUNC4(hProcess, STATUS_SUCCESS);
				break;
			case KUHL_M_PROCESS_GENERICOPERATION_SUSPEND:
				status = FUNC3(hProcess);
				break;
			case KUHL_M_PROCESS_GENERICOPERATION_RESUME:
				status = FUNC2(hProcess);
				break;
			}
			
			if(FUNC1(status))
				FUNC8(L"%s of %u PID : OK !\n", szText, pid);
			else FUNC6(L"%s 0x%08x\n", szText, status);
			FUNC0(hProcess);
		}
		else FUNC7(L"OpenProcess");
	}
	else FUNC6(L"pid (/pid:123) is missing");
	return status;
}