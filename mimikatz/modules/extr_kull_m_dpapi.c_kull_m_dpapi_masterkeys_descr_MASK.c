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
struct TYPE_3__ {scalar_t__ DomainKey; scalar_t__ CredHist; scalar_t__ BackupKey; scalar_t__ MasterKey; scalar_t__ dwDomainKeyLen; scalar_t__ dwCredHistLen; scalar_t__ dwBackupKeyLen; scalar_t__ dwMasterKeyLen; int /*<<< orphan*/  dwFlags; int /*<<< orphan*/  szGuid; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_DPAPI_MASTERKEYS ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(DWORD level, PKULL_M_DPAPI_MASTERKEYS masterkeys)
{
	FUNC0(L"%*s" L"**MASTERKEYS**\n", level << 1, L"");
	if(masterkeys)
	{
		FUNC0(L"%*s" L"  dwVersion          : %08x - %u\n", level << 1, L"", masterkeys->dwVersion, masterkeys->dwVersion);
		FUNC0(L"%*s" L"  szGuid             : {%.36s}\n", level << 1, L"", masterkeys->szGuid);
		FUNC0(L"%*s" L"  dwFlags            : %08x - %u\n", level << 1, L"", masterkeys->dwFlags, masterkeys->dwFlags);
		FUNC0(L"%*s" L"  dwMasterKeyLen     : %08x - %u\n", level << 1, L"", (DWORD) masterkeys->dwMasterKeyLen, (DWORD) masterkeys->dwMasterKeyLen);
		FUNC0(L"%*s" L"  dwBackupKeyLen     : %08x - %u\n", level << 1, L"", (DWORD) masterkeys->dwBackupKeyLen, (DWORD) masterkeys->dwBackupKeyLen);
		FUNC0(L"%*s" L"  dwCredHistLen      : %08x - %u\n", level << 1, L"", (DWORD) masterkeys->dwCredHistLen, (DWORD) masterkeys->dwCredHistLen);
		FUNC0(L"%*s" L"  dwDomainKeyLen     : %08x - %u\n", level << 1, L"", (DWORD) masterkeys->dwDomainKeyLen, (DWORD) masterkeys->dwDomainKeyLen);
		
		if(masterkeys->MasterKey)
		{
			FUNC0(L"%*s" L"[masterkey]\n", level << 1, L"");
			FUNC1(level + 1, masterkeys->MasterKey);
		}
		if(masterkeys->BackupKey)
		{
			FUNC0(L"%*s" L"[backupkey]\n", level << 1, L"");
			FUNC1(level + 1, masterkeys->BackupKey);
		}
		if(masterkeys->CredHist)
		{
			FUNC0(L"%*s" L"[credhist]\n", level << 1, L"");
			FUNC2(level + 1, masterkeys->CredHist);
		}
		if(masterkeys->DomainKey)
		{
			FUNC0(L"%*s" L"[domainkey]\n", level << 1, L"");
			FUNC3(level + 1, masterkeys->DomainKey);
		}
		FUNC0(L"\n");
	}
}