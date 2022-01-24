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
struct TYPE_3__ {int __dwKeyLen; int /*<<< orphan*/  pbKey; int /*<<< orphan*/  algCrypt; int /*<<< orphan*/  algHash; int /*<<< orphan*/  rounds; int /*<<< orphan*/  salt; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_MASTERKEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC3(DWORD level, PKULL_M_DPAPI_MASTERKEY masterkey)
{
	FUNC0(L"%*s" L"**MASTERKEY**\n", level << 1, L"");
	if(masterkey)
	{
		FUNC0(L"%*s" L"  dwVersion        : %08x - %u\n", level << 1, L"", masterkey->dwVersion, masterkey->dwVersion);
		FUNC0(L"%*s" L"  salt             : ", level << 1, L""); FUNC2(masterkey->salt, sizeof(masterkey->salt), 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  rounds           : %08x - %u\n", level << 1, L"", masterkey->rounds, masterkey->rounds);
		FUNC0(L"%*s" L"  algHash          : %08x - %u (%s)\n", level << 1, L"", masterkey->algHash, masterkey->algHash, FUNC1(masterkey->algHash));
		FUNC0(L"%*s" L"  algCrypt         : %08x - %u (%s)\n", level << 1, L"", masterkey->algCrypt, masterkey->algCrypt, FUNC1(masterkey->algCrypt));
		FUNC0(L"%*s" L"  pbKey            : ", level << 1, L""); FUNC2(masterkey->pbKey, masterkey->__dwKeyLen, 0); FUNC0(L"\n\n");
	}
}