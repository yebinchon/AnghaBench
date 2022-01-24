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
struct TYPE_3__ {scalar_t__ pExExportFlag; scalar_t__ dwExExportFlagLen; scalar_t__ pExPrivateKey; scalar_t__ dwExPrivateKeyLen; int /*<<< orphan*/  dwExPublicKeyLen; int /*<<< orphan*/  pExPublicKey; scalar_t__ pSiExportFlag; scalar_t__ dwSiExportFlagLen; scalar_t__ pSiPrivateKey; scalar_t__ dwSiPrivateKeyLen; int /*<<< orphan*/  dwSiPublicKeyLen; int /*<<< orphan*/  pSiPublicKey; int /*<<< orphan*/  dwHashLen; int /*<<< orphan*/  pHash; int /*<<< orphan*/  pName; int /*<<< orphan*/  dwNameLen; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_KEY_CAPI_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(DWORD level, PKULL_M_KEY_CAPI_BLOB capiKey)
{
	FUNC0(L"%*s" L"**KEY (capi)**\n", level << 1, L"");
	if(capiKey)
	{
		FUNC0(L"%*s" L"  dwVersion          : %08x - %u\n", level << 1, L"", capiKey->dwVersion, capiKey->dwVersion);
		FUNC0(L"%*s" L"  dwUniqueNameLen    : %08x - %u\n", level << 1, L"", capiKey->dwNameLen, capiKey->dwNameLen);
		FUNC0(L"%*s" L"  dwSiPublicKeyLen   : %08x - %u\n", level << 1, L"", capiKey->dwSiPublicKeyLen, capiKey->dwSiPublicKeyLen);
		FUNC0(L"%*s" L"  dwSiPrivateKeyLen  : %08x - %u\n", level << 1, L"", capiKey->dwSiPrivateKeyLen, capiKey->dwSiPrivateKeyLen);
		FUNC0(L"%*s" L"  dwExPublicKeyLen   : %08x - %u\n", level << 1, L"", capiKey->dwExPublicKeyLen, capiKey->dwExPublicKeyLen);
		FUNC0(L"%*s" L"  dwExPrivateKeyLen  : %08x - %u\n", level << 1, L"", capiKey->dwExPrivateKeyLen, capiKey->dwExPrivateKeyLen);
		FUNC0(L"%*s" L"  dwHashLen          : %08x - %u\n", level << 1, L"", capiKey->dwHashLen, capiKey->dwHashLen);
		FUNC0(L"%*s" L"  dwSiExportFlagLen  : %08x - %u\n", level << 1, L"", capiKey->dwSiExportFlagLen, capiKey->dwSiExportFlagLen);
		FUNC0(L"%*s" L"  dwExExportFlagLen  : %08x - %u\n", level << 1, L"", capiKey->dwExExportFlagLen, capiKey->dwExExportFlagLen);


		FUNC0(L"%*s" L"  pUniqueName        : ", level << 1, L""); FUNC0(L"%S\n", capiKey->pName);
		FUNC0(L"%*s" L"  pHash              : ", level << 1, L""); FUNC2(capiKey->pHash, capiKey->dwHashLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pSiPublicKey       : ", level << 1, L""); FUNC2(capiKey->pSiPublicKey, capiKey->dwSiPublicKeyLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pSiPrivateKey      :\n", level << 1, L"");
		if(capiKey->pSiPrivateKey && capiKey->dwSiPrivateKeyLen)
			FUNC1(level + 1, capiKey->pSiPrivateKey); /*kull_m_string_wprintf_hex(capiKey->pPrivateKey, capiKey->dwPrivateKeyLen, 0);*/
		FUNC0(L"%*s" L"  pSiExportFlag      :\n", level << 1, L"");
		if(capiKey->pSiExportFlag && capiKey->dwSiExportFlagLen)
			FUNC1(level + 1, capiKey->pSiExportFlag); /*kull_m_string_wprintf_hex(capiKey->pExportFlag, capiKey->dwExportFlagLen, 0);*/
		FUNC0(L"%*s" L"  pExPublicKey       : ", level << 1, L""); FUNC2(capiKey->pExPublicKey, capiKey->dwExPublicKeyLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pExPrivateKey      :\n", level << 1, L"");
		if(capiKey->pExPrivateKey && capiKey->dwExPrivateKeyLen)
			FUNC1(level + 1, capiKey->pExPrivateKey); /*kull_m_string_wprintf_hex(capiKey->pPrivateKey, capiKey->dwPrivateKeyLen, 0);*/
		FUNC0(L"%*s" L"  pExExportFlag      :\n", level << 1, L"");
		if(capiKey->pExExportFlag && capiKey->dwExExportFlagLen)
			FUNC1(level + 1, capiKey->pExExportFlag); /*kull_m_string_wprintf_hex(capiKey->pExportFlag, capiKey->dwExportFlagLen, 0);*/

	}
}