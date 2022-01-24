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
typedef  int /*<<< orphan*/  SCARDHANDLE ;
typedef  int /*<<< orphan*/  SCARDCONTEXT ;
typedef  scalar_t__* PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__* LPWSTR ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_SILENT ; 
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,...) ; 
 int /*<<< orphan*/  SCARD_ALL_READERS ; 
 int /*<<< orphan*/  SCARD_ATTR_ATR_STRING ; 
 int /*<<< orphan*/  SCARD_AUTOALLOCATE ; 
 int /*<<< orphan*/  SCARD_LEAVE_CARD ; 
 int SCARD_PROTOCOL_T0 ; 
 int SCARD_PROTOCOL_T1 ; 
 int /*<<< orphan*/  SCARD_PROVIDER_CARD_MODULE ; 
 int /*<<< orphan*/  SCARD_PROVIDER_CSP ; 
 int /*<<< orphan*/  SCARD_PROVIDER_KSP ; 
 int /*<<< orphan*/  SCARD_PROVIDER_PRIMARY ; 
 int /*<<< orphan*/  SCARD_SCOPE_SYSTEM ; 
 int /*<<< orphan*/  SCARD_SHARE_SHARED ; 
 scalar_t__ SCARD_S_SUCCESS ; 
 scalar_t__ SCARD_W_REMOVED_CARD ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__* FUNC15 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC19 (scalar_t__*) ; 

NTSTATUS FUNC20(int argc, wchar_t * argv[])
{
	SCARDCONTEXT hContext;
	SCARDHANDLE hCard;
	PBYTE atr;
	LONG status;
	LPWSTR mszReaders = NULL, pReader, mszCards = NULL, pCard, szProvider = NULL, szContainer;
	DWORD dwLen = SCARD_AUTOALLOCATE, dwAtrLen;

	status = FUNC4(SCARD_SCOPE_SYSTEM, NULL, NULL, &hContext);
	if(status == SCARD_S_SUCCESS)
	{
		status = FUNC9(hContext, SCARD_ALL_READERS, (LPWSTR) &mszReaders, &dwLen);
		if(status == SCARD_S_SUCCESS)
		{
			FUNC11(L"SmartCard readers:");
			for(pReader = mszReaders; *pReader; pReader += FUNC19(pReader) + 1)
			{
				FUNC11(L"\n * %s\n", pReader);
				FUNC16(hContext, pReader);
				if((szContainer = FUNC15(pReader)))
				{
					status = FUNC2(hContext, pReader, SCARD_SHARE_SHARED, SCARD_PROTOCOL_T0 | SCARD_PROTOCOL_T1, &hCard, &dwLen);
					if(status == SCARD_S_SUCCESS)
					{
						dwAtrLen = SCARD_AUTOALLOCATE;
						status = FUNC6(hCard, SCARD_ATTR_ATR_STRING, (PBYTE) &atr, &dwAtrLen);
						if(status == SCARD_S_SUCCESS)
						{
							FUNC11(L"   ATR  : ");
							FUNC18(atr, dwAtrLen, 0);
							FUNC11(L"\n");
							dwLen = SCARD_AUTOALLOCATE;
							status = FUNC8(hContext, atr, NULL, 0, (LPWSTR) &mszCards, &dwLen);
							if(status == SCARD_S_SUCCESS)
							{
								for(pCard = mszCards; pCard && *pCard; pCard += FUNC19(pCard) + 1)
								{
									FUNC11(L"   Model: %s\n", pCard);

									dwLen = SCARD_AUTOALLOCATE;
									status = FUNC7(hContext, pCard, SCARD_PROVIDER_PRIMARY, (LPWSTR) &szProvider, &dwLen);
									if(status == SCARD_S_SUCCESS)
									{
										FUNC11(L"   PRIM : %s\n", szProvider);
										FUNC5(hContext, szProvider);
									}
									else if(status != ERROR_FILE_NOT_FOUND) FUNC1(L"SCardGetCardTypeProviderName(PRIM): 0x%08x\n", status);

									dwLen = SCARD_AUTOALLOCATE;
									status = FUNC7(hContext, pCard, SCARD_PROVIDER_CSP, (LPWSTR) &szProvider, &dwLen);
									if(status == SCARD_S_SUCCESS)
									{
										FUNC11(L"   CSP  : %s\n", szProvider);
										if((dwLen = FUNC17(szProvider)))
											FUNC12(szContainer, szProvider, dwLen, CRYPT_SILENT, FALSE, NULL);
										FUNC5(hContext, szProvider);
									}
									else if(status != ERROR_FILE_NOT_FOUND) FUNC1(L"SCardGetCardTypeProviderName(CSP): 0x%08x\n", status);

									dwLen = SCARD_AUTOALLOCATE;
									status = FUNC7(hContext, pCard, SCARD_PROVIDER_KSP, (LPWSTR) &szProvider, &dwLen);
									if(status == SCARD_S_SUCCESS)
									{
										FUNC11(L"   KSP  : %s\n", szProvider);
										FUNC13(szContainer, szProvider, 0, FALSE, NULL);
										FUNC5(hContext, szProvider);
									}
									else if(status != ERROR_FILE_NOT_FOUND) FUNC1(L"SCardGetCardTypeProviderName(KSP): 0x%08x\n", status);

									dwLen = SCARD_AUTOALLOCATE;
									status = FUNC7(hContext, pCard, SCARD_PROVIDER_CARD_MODULE, (LPWSTR) &szProvider, &dwLen);
									if(status == SCARD_S_SUCCESS)
									{
										FUNC11(L"   MDRV : %s\n", szProvider);
										FUNC14(szProvider, hContext, hCard, pCard, atr, dwAtrLen);
										FUNC5(hContext, szProvider);
									}
									else if(status != ERROR_FILE_NOT_FOUND) FUNC1(L"SCardGetCardTypeProviderName(MDR): 0x%08x\n", status);
								}
								FUNC5(hContext, mszCards);
							}
							else FUNC1(L"SCardListCards: 0x%08x\n", status);
							FUNC5(hContext, atr);
						}
						else FUNC1(L"SCardGetAttrib: 0x%08x (%u)\n", status, dwAtrLen);
						FUNC3(hCard, SCARD_LEAVE_CARD);
					}
					else if(status != SCARD_W_REMOVED_CARD)
						FUNC1(L"SCardConnect: 0x%08x\n", status);
					FUNC0(szContainer);
				}
			}
			FUNC5(hContext, mszReaders);
		}
		else FUNC1(L"SCardListReaders: 0x%08x\n", status);
		FUNC10(hContext);
	}
	else FUNC1(L"SCardEstablishContext: 0x%08x\n", status);
	return STATUS_SUCCESS;
}