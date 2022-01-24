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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 char* MIMIKATZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_VARIABLE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC10(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	LPCWSTR szName, szGuid, szAttributes;
	UNICODE_STRING uName, uGuid;
	GUID guid;
	DWORD attributes;

	FUNC8(argc, argv, L"name", &szName, MIMIKATZ);
	FUNC8(argc, argv, L"guid", &szGuid, L"{b16b00b5-cafe-babe-0ee0-dabadabad000}");
	FUNC8(argc, argv, L"attributes", &szAttributes, L"1");

	FUNC4(&uName, szName);
	FUNC4(&uGuid, szGuid);
	attributes = FUNC9(szAttributes, NULL, 0);

	status = FUNC3(&uGuid, &guid);
	if(FUNC0(status))
	{
		FUNC5(L"Name       : %wZ\nVendor GUID: ", &uName);
		FUNC7(&guid);
		FUNC5(L"\nAttributes : %08x (", attributes);
		FUNC6(attributes);
		FUNC5(L")\n");

		status = FUNC1(&uName, &guid, NULL, 0, attributes);
		if(FUNC0(status))
			FUNC5(L"> OK!\n");
		else if(status == STATUS_VARIABLE_NOT_FOUND)
			FUNC2(L"System Environment Variable not found.\n");
		else FUNC2(L"NtSetSystemEnvironmentValueEx(data): 0x%08x\n", status);
	}
	else FUNC2(L"RtlGUIDFromString: 0x%08x\n", status);
	return STATUS_SUCCESS;
}