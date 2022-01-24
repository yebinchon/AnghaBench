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
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  scalar_t__ LPCWSTR ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_LOGON_FAILURE ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ LOGONID_CURRENT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  SERVERHANDLE_CURRENT ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int,int /*<<< orphan*/ **,char*,scalar_t__*,char*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC7(int argc, wchar_t * argv[])
{
	LPCWSTR szId, szPassword;
	DWORD id, target;
	if(FUNC5(argc, argv, L"id", &szId, NULL))
	{
		id = FUNC6(szId, NULL, 0);
		if(FUNC5(argc, argv, L"target", &szId, NULL))
			target = FUNC6(szId, NULL, 0);
		else target = LOGONID_CURRENT;
		
		FUNC5(argc, argv, L"password", &szPassword, L"");

		FUNC4(L"Asking to connect from %u to ", id);
		if(target == LOGONID_CURRENT)
			FUNC4(L"current session");
		else FUNC4(L"%u", target);
		
		FUNC4(L"\n\n> ");
		if(FUNC3(SERVERHANDLE_CURRENT, id, target, (LPWSTR) szPassword, FALSE))
			FUNC4(L"Connected to %u\n", id);
		else if(FUNC0() == ERROR_LOGON_FAILURE)
			FUNC1(L"Bad password for this session (take care to not lock the account!)\n");
		else FUNC2(L"WinStationConnect");
	}
	else FUNC1(L"Argument id is needed\n");
	return STATUS_SUCCESS;
}