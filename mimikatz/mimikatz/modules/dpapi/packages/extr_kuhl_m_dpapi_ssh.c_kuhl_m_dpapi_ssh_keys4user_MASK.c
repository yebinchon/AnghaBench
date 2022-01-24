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
typedef  char wchar_t ;
struct TYPE_3__ {char* pSid; scalar_t__ hToken; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
typedef  int /*<<< orphan*/  PKULL_M_REGISTRY_HANDLE ;
typedef  scalar_t__ LPCWSTR ;
typedef  TYPE_1__ KUHL_M_DPAPI_SSH_TOKEN ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char**) ; 
 scalar_t__ FALSE ; 
 int KEY_READ ; 
 int KEY_WOW64_64KEY ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char**,scalar_t__) ; 
 int /*<<< orphan*/  kuhl_m_dpapi_ssh_impersonate ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int,char**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC14(PKULL_M_REGISTRY_HANDLE hRegistry, HKEY hUser, LPCWSTR szSID, int argc, wchar_t * argv[])
{
	HKEY hKeys, hEntry;
	DWORD i, nbSubKeys, szMaxSubKeyLen, szKey;
	wchar_t * keyName;
	KUHL_M_DPAPI_SSH_TOKEN tokenData = {NULL, NULL};
	BOOL tokenToClose = FALSE;

	if(FUNC10(hRegistry, hUser, L"Software\\OpenSSH\\Agent\\Keys", 0, KEY_WOW64_64KEY | KEY_READ, &hKeys))
	{
		if(szSID && FUNC12(argc, argv, L"impersonate", NULL, NULL))
		{
			FUNC5(L" * Trying to get an impersonation token for %s: ", szSID);
			if(FUNC1(szSID, &tokenData.pSid))
			{
				if((tokenToClose = FUNC13(kuhl_m_dpapi_ssh_impersonate, &tokenData)))
				{
					FUNC5(L"   ");
					FUNC7(tokenData.hToken, FALSE);
				}
				else FUNC4(L"kull_m_token_getTokensUnique/kull_m_token_getTokensUnique");
			}
			else FUNC4(L"ConvertStringSidToSid");
		}

		if(FUNC11(hRegistry, hKeys, NULL, NULL, NULL, &nbSubKeys, &szMaxSubKeyLen, NULL, NULL, NULL, NULL, NULL, NULL))
		{
			szMaxSubKeyLen++;
			if((keyName = (wchar_t *) FUNC2(LPTR, (szMaxSubKeyLen + 1) * sizeof(wchar_t))))
			{
				for(i = 0; i < nbSubKeys; i++)
				{
					szKey = szMaxSubKeyLen;
					if(FUNC9(hRegistry, hKeys, i, keyName, &szKey, NULL, NULL, NULL, NULL))
					{
						FUNC5(L"\n   [%s] ", keyName);
						if(FUNC10(hRegistry, hKeys, keyName, 0, KEY_READ, &hEntry))
						{
							FUNC5(L"\n");
							FUNC6(hRegistry, hEntry,  argc, argv, tokenData.hToken);
							FUNC8(hRegistry, hEntry);
						}
						else FUNC4(L"kull_m_registry_RegOpenKeyEx");
					}
				}
				FUNC3(keyName);
			}
		}
		else FUNC4(L"kull_m_registry_RegQueryInfoKey");

		if(tokenData.pSid)
			FUNC3(tokenData.pSid);
		if(tokenToClose && tokenData.hToken)
			FUNC0(tokenData.hToken);
		FUNC8(hRegistry, hKeys);
	}
}