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
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* MIMIKATZ ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC13(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	LPCWSTR szName, szGuid, szAttributes, szData;
	UNICODE_STRING uName, uGuid;
	GUID guid;
	LPBYTE hex;
	DWORD size, attributes;

	FUNC9(argc, argv, L"name", &szName, MIMIKATZ);
	FUNC9(argc, argv, L"guid", &szGuid, L"{b16b00b5-cafe-babe-0ee0-dabadabad000}");
	FUNC9(argc, argv, L"attributes", &szAttributes, L"1");
	FUNC9(argc, argv, L"data", &szData, L"410020004c00610020005600690065002c002000410020004c00270041006d006f00750072000000");

	FUNC5(&uName, szName);
	FUNC5(&uGuid, szGuid);
	attributes = FUNC12(szAttributes, NULL, 0);

	status = FUNC4(&uGuid, &guid);
	if(FUNC1(status))
	{
		FUNC6(L"Name       : %wZ\nVendor GUID: ", &uName);
		FUNC8(&guid);
		FUNC6(L"\nAttributes : %08x (", attributes);
		FUNC7(attributes);
		FUNC6(L")\n");
		if(FUNC10(szData, &hex, &size))
		{
			FUNC6(L"Length     : %u\nData       : ", size);
			FUNC11(hex, size, 1);
			FUNC6(L"\n\n");
			status = FUNC2(&uName, &guid, hex, size, attributes);
			if(FUNC1(status))
				FUNC6(L"> OK!\n");
			else FUNC3(L"NtSetSystemEnvironmentValueEx(data): 0x%08x\n", status);
			FUNC0(hex);
		}
	}
	else FUNC3(L"RtlGUIDFromString: 0x%08x\n", status);
	return STATUS_SUCCESS;
}