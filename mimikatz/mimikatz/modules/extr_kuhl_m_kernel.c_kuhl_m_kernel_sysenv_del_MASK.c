#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  UNICODE_STRING ;
struct TYPE_4__ {int Attributes; int /*<<< orphan*/ * Name; scalar_t__ ValueOffset; scalar_t__ ValueLength; int /*<<< orphan*/  VendorGuid; } ;
typedef  TYPE_1__* PMIMIDRV_VARIABLE_NAME_AND_VALUE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCWSTR ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IOCTL_MIMIDRV_SYSENVSET ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  MIMIDRV_VARIABLE_NAME_AND_VALUE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Name ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

NTSTATUS FUNC15(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	LPCWSTR szName, szGuid, szAttributes;
	UNICODE_STRING uName, uGuid;
	GUID guid;
	DWORD attributes, nameLen, structSize;
	PMIMIDRV_VARIABLE_NAME_AND_VALUE vnv;

	FUNC12(argc, argv, L"name", &szName, L"Kernel_Lsa_Ppl_Config");
	FUNC12(argc, argv, L"guid", &szGuid, L"{77fa9abd-0359-4d32-bd60-28f4e78f784b}");
	FUNC12(argc, argv, L"attributes", &szAttributes, L"1");

	FUNC7(&uName, szName);
	FUNC7(&uGuid, szGuid);
	attributes = FUNC14(szAttributes, NULL, 0);

	status = FUNC6(&uGuid, &guid);
	if(FUNC3(status))
	{
		FUNC8(L"Name       : %wZ\nVendor GUID: ", &uName);
		FUNC10(&guid);
		FUNC8(L"\nAttributes : %08x (", attributes);
		FUNC9(attributes);
		FUNC8(L")\n\n");

		nameLen = ((DWORD) FUNC13(szName) + 1) * sizeof(wchar_t);
		structSize = FUNC0(MIMIDRV_VARIABLE_NAME_AND_VALUE, Name) + nameLen;
		if((vnv = (PMIMIDRV_VARIABLE_NAME_AND_VALUE) FUNC1(LPTR, structSize)))
		{
			vnv->Attributes = attributes;
			FUNC5(&vnv->VendorGuid, &guid, sizeof(GUID));
			vnv->ValueLength = 0;
			vnv->ValueOffset = 0;
			FUNC5(vnv->Name, szName, nameLen);
			if(FUNC11(IOCTL_MIMIDRV_SYSENVSET, vnv, structSize))
				FUNC8(L"> OK!\n");
			FUNC2(vnv);
		}
	}
	else FUNC4(L"RtlGUIDFromString: 0x%08x\n", status);
	return STATUS_SUCCESS;
}