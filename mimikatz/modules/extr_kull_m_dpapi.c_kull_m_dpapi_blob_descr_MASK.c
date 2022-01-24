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
struct TYPE_3__ {int /*<<< orphan*/  dwSignLen; int /*<<< orphan*/  pbSign; int /*<<< orphan*/  dwDataLen; int /*<<< orphan*/  pbData; int /*<<< orphan*/  dwHmac2KeyLen; int /*<<< orphan*/  pbHmack2Key; int /*<<< orphan*/  dwAlgHashLen; int /*<<< orphan*/  algHash; int /*<<< orphan*/  dwHmacKeyLen; int /*<<< orphan*/  pbHmackKey; int /*<<< orphan*/  dwSaltLen; int /*<<< orphan*/  pbSalt; int /*<<< orphan*/  dwAlgCryptLen; int /*<<< orphan*/  algCrypt; int /*<<< orphan*/  szDescription; int /*<<< orphan*/  dwDescriptionLen; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  guidMasterKey; int /*<<< orphan*/  dwMasterKeyVersion; int /*<<< orphan*/  guidProvider; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5(DWORD level, PKULL_M_DPAPI_BLOB blob)
{
	FUNC0(L"%*s" L"**BLOB**\n", level << 1, L"");
	if(blob)
	{
		FUNC0(L"%*s" L"  dwVersion          : %08x - %u\n", level << 1, L"", blob->dwVersion, blob->dwVersion);
		FUNC0(L"%*s" L"  guidProvider       : ", level << 1, L""); FUNC3(&blob->guidProvider); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwMasterKeyVersion : %08x - %u\n", level << 1, L"", blob->dwMasterKeyVersion, blob->dwMasterKeyVersion);
		FUNC0(L"%*s" L"  guidMasterKey      : ", level << 1, L""); FUNC3(&blob->guidMasterKey); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwFlags            : %08x - %u (", level << 1, L"", blob->dwFlags, blob->dwFlags);
		FUNC2(blob->dwFlags);
		FUNC0(L")\n");
		FUNC0(L"%*s" L"  dwDescriptionLen   : %08x - %u\n", level << 1, L"", blob->dwDescriptionLen, blob->dwDescriptionLen);
		FUNC0(L"%*s" L"  szDescription      : %s\n", level << 1, L"", blob->szDescription);
		FUNC0(L"%*s" L"  algCrypt           : %08x - %u (%s)\n", level << 1, L"", blob->algCrypt, blob->algCrypt, FUNC1(blob->algCrypt));
		FUNC0(L"%*s" L"  dwAlgCryptLen      : %08x - %u\n", level << 1, L"", blob->dwAlgCryptLen, blob->dwAlgCryptLen);
		FUNC0(L"%*s" L"  dwSaltLen          : %08x - %u\n", level << 1, L"", blob->dwSaltLen, blob->dwSaltLen);
		FUNC0(L"%*s" L"  pbSalt             : ", level << 1, L""); FUNC4(blob->pbSalt, blob->dwSaltLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwHmacKeyLen       : %08x - %u\n", level << 1, L"", blob->dwHmacKeyLen, blob->dwHmacKeyLen);
		FUNC0(L"%*s" L"  pbHmackKey         : ", level << 1, L""); FUNC4(blob->pbHmackKey, blob->dwHmacKeyLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  algHash            : %08x - %u (%s)\n", level << 1, L"", blob->algHash, blob->algHash, FUNC1(blob->algHash));
		FUNC0(L"%*s" L"  dwAlgHashLen       : %08x - %u\n", level << 1, L"", blob->dwAlgHashLen, blob->dwAlgHashLen);
		FUNC0(L"%*s" L"  dwHmac2KeyLen      : %08x - %u\n", level << 1, L"", blob->dwHmac2KeyLen, blob->dwHmac2KeyLen);
		FUNC0(L"%*s" L"  pbHmack2Key        : ", level << 1, L""); FUNC4(blob->pbHmack2Key, blob->dwHmac2KeyLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwDataLen          : %08x - %u\n", level << 1, L"", blob->dwDataLen, blob->dwDataLen);
		FUNC0(L"%*s" L"  pbData             : ", level << 1, L""); FUNC4(blob->pbData, blob->dwDataLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwSignLen          : %08x - %u\n", level << 1, L"", blob->dwSignLen, blob->dwSignLen);
		FUNC0(L"%*s" L"  pbSign             : ", level << 1, L""); FUNC4(blob->pbSign, blob->dwSignLen, 0); FUNC0(L"\n\n");
	}
}