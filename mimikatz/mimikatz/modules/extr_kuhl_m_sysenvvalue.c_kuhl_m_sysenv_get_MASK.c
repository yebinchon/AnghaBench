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
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_BUFFER_TOO_SMALL ; 
 scalar_t__ STATUS_SUCCESS ; 
 scalar_t__ STATUS_VARIABLE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

NTSTATUS FUNC12(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	LPCWSTR szName, szGuid;
	UNICODE_STRING uName, uGuid;
	GUID guid;
	DWORD bufferLen = 0, attributes;
	PVOID buffer;

	FUNC10(argc, argv, L"name", &szName, L"Kernel_Lsa_Ppl_Config");
	FUNC10(argc, argv, L"guid", &szGuid, L"{77fa9abd-0359-4d32-bd60-28f4e78f784b}");
	FUNC6(&uName, szName);
	FUNC6(&uGuid, szGuid);

	status = FUNC5(&uGuid, &guid);
	if(FUNC2(status))
	{
		FUNC7(L"Name       : %wZ\nVendor GUID: ", &uName);
		FUNC9(&guid);
		FUNC7(L"\n");
		status = FUNC3(&uName, &guid, NULL, &bufferLen, &attributes);
		if((status == STATUS_BUFFER_TOO_SMALL) && bufferLen)
		{
			if((buffer = FUNC0(LPTR, bufferLen)))
			{
				status = FUNC3(&uName, &guid, buffer, &bufferLen, &attributes);
				if(FUNC2(status))
				{
					FUNC7(L"Attributes : %08x (", attributes);
					FUNC8(attributes);
					FUNC7(L")\nLength     : %u\nData       : ", bufferLen);
					FUNC11(buffer, bufferLen, 1);
					FUNC7(L"\n");
				}
				else FUNC4(L"NtQuerySystemEnvironmentValueEx(data): 0x%08x\n", status);
				FUNC1(buffer);
			}
		}
		else if(status == STATUS_VARIABLE_NOT_FOUND)
			FUNC4(L"System Environment Variable not found.\n");
		else FUNC4(L"NtQuerySystemEnvironmentValueEx(size): 0x%08x\n", status);
	}
	else FUNC4(L"RtlGUIDFromString: 0x%08x\n", status);
	return STATUS_SUCCESS;
}