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
struct TYPE_3__ {int /*<<< orphan*/  dwAccesscheckLen; int /*<<< orphan*/  pbAccesscheck; int /*<<< orphan*/  dwSecretLen; int /*<<< orphan*/  pbSecret; int /*<<< orphan*/  guidMasterKey; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_MASTERKEY_DOMAINKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(DWORD level, PKULL_M_DPAPI_MASTERKEY_DOMAINKEY domainkey)
{
	FUNC0(L"%*s" L"**DOMAINKEY**\n", level << 1, L"");
	if(domainkey)
	{
		FUNC0(L"%*s" L"  dwVersion        : %08x - %u\n", level << 1, L"", domainkey->dwVersion, domainkey->dwVersion);
		FUNC0(L"%*s" L"  dwSecretLen      : %08x - %u\n", level << 1, L"", domainkey->dwSecretLen, domainkey->dwSecretLen);
		FUNC0(L"%*s" L"  dwAccesscheckLen : %08x - %u\n", level << 1, L"", domainkey->dwAccesscheckLen, domainkey->dwAccesscheckLen);
		FUNC0(L"%*s" L"  guidMasterKey    : ", level << 1, L""); FUNC1(&domainkey->guidMasterKey); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pbSecret         : ", level << 1, L""); FUNC2(domainkey->pbSecret, domainkey->dwSecretLen, 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pbAccesscheck    : ", level << 1, L""); FUNC2(domainkey->pbAccesscheck, domainkey->dwAccesscheckLen, 0); FUNC0(L"\n\n");
	}
}