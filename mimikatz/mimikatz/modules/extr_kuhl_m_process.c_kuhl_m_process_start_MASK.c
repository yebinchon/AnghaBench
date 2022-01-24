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
struct TYPE_3__ {int /*<<< orphan*/ * dwProcessId; } ;
typedef  TYPE_1__ PROCESS_INFORMATION ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  KULL_M_PROCESS_CREATE_NORMAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC3(int argc, wchar_t * argv[])
{
	PCWCHAR commandLine;
	PROCESS_INFORMATION informations;
	if(argc)
	{
		commandLine = argv[argc - 1];
		FUNC1(L"Trying to start \"%s\" : ", commandLine);
		if(FUNC2(KULL_M_PROCESS_CREATE_NORMAL, commandLine, 0, NULL, 0, NULL, NULL, NULL, &informations, TRUE))
			FUNC1(L"OK ! (PID %u)\n", informations.dwProcessId);
		else FUNC0(L"kull_m_process_create");
	}
	return STATUS_SUCCESS;
}