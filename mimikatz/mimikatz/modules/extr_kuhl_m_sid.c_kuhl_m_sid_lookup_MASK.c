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
typedef  int /*<<< orphan*/  SID_NAME_USE ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PSID ;
typedef  int /*<<< orphan*/ * PCWCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC11(int argc, wchar_t * argv[])
{
	PWSTR name, domain;
	PSID pSid;
	SID_NAME_USE nameUse;
	PCWCHAR szName, szSystem = NULL;
	FUNC6(argc, argv, L"system", &szSystem, NULL);

	if(FUNC6(argc, argv, L"sid", &szName, NULL))
	{
		if(FUNC0(szName, &pSid))
		{
			FUNC5(L"SID   : %s\n", szName);
			if(FUNC1(pSid))
			{
				if(FUNC8(pSid, &name, &domain, &nameUse, szSystem))
				{
					FUNC5(L"Type  : %s\n"
						L"Domain: %s\n"
						L"Name  : %s\n", FUNC10(nameUse), domain, name);
					FUNC2(name);
					FUNC2(domain);
				}
				else FUNC4(L"kull_m_token_getNameDomainFromSID");
			}
			else FUNC3(L"Invalid SID\n");
			FUNC2(pSid);
		}
		else FUNC4(L"ConvertStringSidToSid");
	}
	else if(FUNC6(argc, argv, L"name", &szName, NULL))
	{
		FUNC5(L"Name  : %s\n", szName);
		if(FUNC9(szName, &pSid, &domain, &nameUse, szSystem))
		{
			FUNC5(L"Type  : %s\n"
				L"Domain: %s\n"
				L"SID   : ", FUNC10(nameUse), domain);
			FUNC7(pSid);
			FUNC5(L"\n");
			FUNC2(pSid);
			FUNC2(domain);
		}
		else FUNC4(L"kull_m_token_getSidDomainFromName");
	}
	else FUNC3(L"/sid or /name is missing\n");

	return STATUS_SUCCESS;
}