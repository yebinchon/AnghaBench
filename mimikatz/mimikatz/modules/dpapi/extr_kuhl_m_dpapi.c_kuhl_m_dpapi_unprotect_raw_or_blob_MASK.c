#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_13__ {int member_0; int member_1; int /*<<< orphan*/  dwPromptFlags; int /*<<< orphan*/  member_3; int /*<<< orphan*/ * member_2; } ;
struct TYPE_10__ {int /*<<< orphan*/ * keyHash; } ;
struct TYPE_12__ {TYPE_1__ data; } ;
struct TYPE_11__ {int /*<<< orphan*/  guidMasterKey; } ;
typedef  TYPE_2__* PKULL_M_DPAPI_BLOB ;
typedef  TYPE_3__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef  int /*<<< orphan*/ * PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  int DWORD ;
typedef  TYPE_4__ CRYPTPROTECT_PROMPTSTRUCT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int CRYPTPROTECT_LOCAL_MACHINE ; 
 int CRYPTPROTECT_PROMPT_ON_PROTECT ; 
 int CRYPTPROTECT_PROMPT_ON_UNPROTECT ; 
 int CRYPTPROTECT_PROMPT_STRONG ; 
 int CRYPTPROTECT_UI_FORBIDDEN ; 
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MIMIKATZ ; 
 scalar_t__ NTE_BAD_KEY_STATE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_4__*,int,int /*<<< orphan*/ *,int*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

BOOL FUNC16(LPCVOID pDataIn, DWORD dwDataInLen, LPWSTR *ppszDataDescr, int argc, wchar_t * argv[], LPCVOID pOptionalEntropy, DWORD dwOptionalEntropyLen, LPVOID *pDataOut, DWORD *dwDataOutLen, LPCWSTR pText)
{
	BOOL status = FALSE;
	PCWSTR szEntropy, szMasterkey, szPassword = NULL;
	CRYPTPROTECT_PROMPTSTRUCT promptStructure = {sizeof(CRYPTPROTECT_PROMPTSTRUCT), CRYPTPROTECT_PROMPT_ON_PROTECT | CRYPTPROTECT_PROMPT_ON_UNPROTECT | CRYPTPROTECT_PROMPT_STRONG, NULL, MIMIKATZ}, *pPrompt;

	PBYTE masterkey = NULL, entropy = NULL;
	DWORD masterkeyLen = 0, entropyLen = 0, flags = 0;
	PKULL_M_DPAPI_BLOB blob;
	PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry = NULL;
	BOOL isNormalAPI = FUNC12(argc, argv, L"unprotect", NULL, NULL);

	if(FUNC12(argc, argv, L"masterkey", &szMasterkey, NULL))
		FUNC14(szMasterkey, &masterkey, &masterkeyLen);
	FUNC12(argc, argv, L"password", &szPassword, NULL);
	if(FUNC12(argc, argv, L"entropy", &szEntropy, NULL))
		FUNC14(szEntropy, &entropy, &entropyLen);
	pPrompt = FUNC12(argc, argv, L"prompt", NULL, NULL) ? &promptStructure : NULL;

	if(FUNC12(argc, argv, L"machine", NULL, NULL))
		flags |= CRYPTPROTECT_LOCAL_MACHINE;

	if((blob = FUNC8(pDataIn)))
	{
		entry = FUNC7(&blob->guidMasterKey);
		if(entry || (masterkey && masterkeyLen) || isNormalAPI)
		{
			if(pText)
				FUNC4(L"%s", pText);

			if(isNormalAPI)
			{
				FUNC4(L" * using CryptUnprotectData API\n");
			}
			
			if(entry)
			{
				FUNC4(L" * volatile cache: ");
				FUNC6(entry);
			}
			if(masterkey)
			{
				FUNC4(L" * masterkey     : ");
				FUNC15(masterkey, masterkeyLen, 0);
				FUNC4(L"\n");
			}
			if(pPrompt)
			{
				FUNC4(L" > prompt flags  : ");
				FUNC10(pPrompt->dwPromptFlags);
				FUNC4(L"\n");
			}
			else flags |= CRYPTPROTECT_UI_FORBIDDEN;
			if(entropy)
			{
				FUNC4(L" > entropy       : ");
				FUNC15(entropy, entropyLen, 0);
				FUNC4(L"\n");
			}
			if(szPassword)
				FUNC4(L" > password      : %s\n", szPassword);

			if(entry)
				status = FUNC11(pDataIn, dwDataInLen, ppszDataDescr, (pOptionalEntropy && dwOptionalEntropyLen) ? pOptionalEntropy : entropy, (pOptionalEntropy && dwOptionalEntropyLen) ? dwOptionalEntropyLen : entropyLen, NULL, 0, pDataOut, dwDataOutLen, entry->data.keyHash, sizeof(entry->data.keyHash), szPassword);

			if(!status && ((masterkey && masterkeyLen) || isNormalAPI))
			{
				status = FUNC11(pDataIn, dwDataInLen, ppszDataDescr, (pOptionalEntropy && dwOptionalEntropyLen) ? pOptionalEntropy : entropy, (pOptionalEntropy && dwOptionalEntropyLen) ? dwOptionalEntropyLen : entropyLen, pPrompt, flags, pDataOut, dwDataOutLen, masterkey, masterkeyLen, szPassword);
				if(status && masterkey && masterkeyLen)
					FUNC5(&blob->guidMasterKey, masterkey, masterkeyLen);

				if(!status && !masterkey)
				{
					if(FUNC0() == NTE_BAD_KEY_STATE)
					{
						FUNC2(L"NTE_BAD_KEY_STATE, needed Masterkey is: ");
						FUNC13(&blob->guidMasterKey);
						FUNC4(L"\n");
					}
					else FUNC3(L"CryptUnprotectData");
				}
			}
			//kprintf(L"\n");
		}
		FUNC9(blob);
	}

	if(entropy)
		FUNC1(entropy);
	if(masterkey)
		FUNC1(masterkey);
	return status;
}