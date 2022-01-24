#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_5__ {scalar_t__ Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/ * LPCGUID ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

NTSTATUS FUNC10(int argc, wchar_t * argv[])
{
	NTSTATUS status;
	UNICODE_STRING secret;
	GUID guid;
	PCWCHAR szGuid = NULL, szSystem = NULL;
	BOOL export = FUNC8(argc, argv, L"export", NULL, NULL);
	BOOL isSecret = FUNC8(argc, argv, L"secret", NULL, NULL);

	FUNC8(argc, argv, L"system", &szSystem, NULL);
	FUNC8(argc, argv, L"guid", &szGuid, NULL);
	if(szGuid)
	{
		FUNC4(&secret, szGuid);
		status = FUNC3(&secret, &guid);
		if(FUNC1(status))
		{
			FUNC5(L"\n"); FUNC9(&guid); FUNC5(L" seems to be a valid GUID\n");
			FUNC7(&guid, export, szSystem, isSecret);
		}
		else FUNC2(L"Invalid GUID (0x%08x) ; %s\n", status, szGuid);
	}
	else
	{
		FUNC5(L"\nCurrent prefered key:       ");
		status = FUNC6(szSystem, L"G$BCKUPKEY_PREFERRED", &secret, isSecret);
		if(FUNC1(status))
		{
			FUNC9((LPCGUID) secret.Buffer); FUNC5(L"\n");
			FUNC7((LPCGUID) secret.Buffer, export, szSystem, isSecret);
			FUNC0(secret.Buffer);
		}
		else FUNC2(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);

		FUNC5(L"\nCompatibility prefered key: ");
		status = FUNC6(szSystem, L"G$BCKUPKEY_P", &secret, isSecret);
		if(FUNC1(status))
		{
			FUNC9((LPCGUID) secret.Buffer); FUNC5(L"\n");
			FUNC7((LPCGUID) secret.Buffer, export, szSystem, isSecret);
			FUNC0(secret.Buffer);
		}
		else FUNC2(L"kuhl_m_lsadump_LsaRetrievePrivateData: 0x%08x\n", status);
	}
	return STATUS_SUCCESS;
}