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
struct TYPE_3__ {int /*<<< orphan*/  dwProcessId; } ;
typedef  TYPE_1__ SERVICE_STATUS_PROCESS ;
typedef  int /*<<< orphan*/  PKULL_M_MEMORY_HANDLE ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KULL_M_MEMORY_TYPE_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (char*,TYPE_1__*) ; 

BOOL FUNC5(PKULL_M_MEMORY_HANDLE * hMemory, DWORD Flags)
{
	BOOL success = FALSE;
	SERVICE_STATUS_PROCESS ServiceStatusProcess;
	HANDLE hProcess;

	if(FUNC4(L"SamSs", &ServiceStatusProcess))
	{
		if((hProcess = FUNC1(Flags, FALSE, ServiceStatusProcess.dwProcessId)))
		{
			if(!(success = FUNC3(KULL_M_MEMORY_TYPE_PROCESS, hProcess, hMemory)))
				FUNC0(hProcess);
		}
		else FUNC2(L"OpenProcess");
	}
	else FUNC2(L"kull_m_service_getUniqueForName");
	return success;
}