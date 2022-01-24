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
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ (* KUHL_M_SERVICE_FUNC ) (int /*<<< orphan*/ *) ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ KULL_M_WIN_BUILD_7 ; 
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 

NTSTATUS FUNC4(KUHL_M_SERVICE_FUNC function, wchar_t * text, int argc, wchar_t * argv[], DWORD dwControl)
{
	if(argc)
	{
		FUNC2(L"%s \'%s\' service : ", text, argv[0]);
		if(argc == 1)
		{
			if(function(argv[0]))
				FUNC2(L"OK\n");
			else FUNC1(L"Service operation");
		}
#if defined(SERVICE_INCONTROL)
		else if(dwControl && (MIMIKATZ_NT_BUILD_NUMBER >= KULL_M_WIN_BUILD_7))
		{
			kuhl_service_sendcontrol_inprocess(argv[0], dwControl);
		}
		else PRINT_ERROR(L"Inject not available\n");
#endif
	}
	else FUNC0(L"Missing service name argument\n");

	return STATUS_SUCCESS;
}