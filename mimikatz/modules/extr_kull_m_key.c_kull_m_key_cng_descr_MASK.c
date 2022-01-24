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
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int dwNameLen; char* pName; scalar_t__ pPrivateKey; scalar_t__ dwPrivateKeyLen; scalar_t__ pPrivateProperties; scalar_t__ dwPrivatePropertiesLen; int /*<<< orphan*/  cbPublicProperties; int /*<<< orphan*/  pPublicProperties; int /*<<< orphan*/  unkArray; int /*<<< orphan*/  dwPublicPropertiesLen; int /*<<< orphan*/  type; int /*<<< orphan*/  unk; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_KEY_CNG_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC4(DWORD level, PKULL_M_KEY_CNG_BLOB cngKey)
{
	FUNC0(L"%*s" L"**KEY (cng)**\n", level << 1, L"");
	if(cngKey)
	{
		FUNC0(L"%*s" L"  dwVersion             : %08x - %u\n", level << 1, L"", cngKey->dwVersion, cngKey->dwVersion);
		FUNC0(L"%*s" L"  unk                   : %08x - %u\n", level << 1, L"", cngKey->unk, cngKey->unk);
		FUNC0(L"%*s" L"  dwNameLen             : %08x - %u\n", level << 1, L"", cngKey->dwNameLen, cngKey->dwNameLen);
		FUNC0(L"%*s" L"  type                  : %08x - %u\n", level << 1, L"", cngKey->type, cngKey->type);
		FUNC0(L"%*s" L"  dwPublicPropertiesLen : %08x - %u\n", level << 1, L"", cngKey->dwPublicPropertiesLen, cngKey->dwPublicPropertiesLen);
		FUNC0(L"%*s" L"  dwPrivatePropertiesLen: %08x - %u\n", level << 1, L"", cngKey->dwPrivatePropertiesLen, cngKey->dwPrivatePropertiesLen);
		FUNC0(L"%*s" L"  dwPrivateKeyLen       : %08x - %u\n", level << 1, L"", cngKey->dwPrivateKeyLen, cngKey->dwPrivateKeyLen);
		FUNC0(L"%*s" L"  unkArray[16]          : ", level << 1, L""); FUNC3(cngKey->unkArray, sizeof(cngKey->unkArray), 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pName                 : ", level << 1, L""); FUNC0(L"%.*s\n", cngKey->dwNameLen / sizeof(wchar_t), cngKey->pName);
		FUNC0(L"%*s" L"  pPublicProperties     : ", level << 1, L""); FUNC2(level + 1, cngKey->pPublicProperties, cngKey->cbPublicProperties);
		FUNC0(L"%*s" L"  pPrivateProperties    :\n", level << 1, L"");
		if(cngKey->pPrivateProperties && cngKey->dwPrivatePropertiesLen)
			FUNC1(level + 1, cngKey->pPrivateProperties); /*kull_m_string_wprintf_hex(cngKey->pPrivateProperties, cngKey->dwPrivatePropertiesLen, 0);*/
		FUNC0(L"%*s" L"  pPrivateKey           :\n", level << 1, L"");
		if(cngKey->pPrivateKey && cngKey->dwPrivateKeyLen)
			FUNC1(level + 1, cngKey->pPrivateKey); /*kull_m_string_wprintf_hex(cngKey->pPrivateKey, cngKey->dwPrivateKeyLen, 0);*/
	}
}