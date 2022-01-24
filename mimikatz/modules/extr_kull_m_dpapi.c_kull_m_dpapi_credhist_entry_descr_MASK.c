#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dwNextLen; int /*<<< orphan*/  guid; int /*<<< orphan*/  dwVersion; } ;
struct TYPE_5__ {int __dwSecretLen; int /*<<< orphan*/  pSecret; int /*<<< orphan*/  pSid; int /*<<< orphan*/  salt; int /*<<< orphan*/  md4Len; int /*<<< orphan*/  sha1Len; int /*<<< orphan*/  algCrypt; int /*<<< orphan*/  sidLen; int /*<<< orphan*/  rounds; int /*<<< orphan*/  algHash; int /*<<< orphan*/  dwType; TYPE_1__ header; } ;
typedef  TYPE_2__* PKULL_M_DPAPI_CREDHIST_ENTRY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

void FUNC5(DWORD level, PKULL_M_DPAPI_CREDHIST_ENTRY entry)
{
	FUNC0(L"%*s" L"**CREDHIST ENTRY**\n", level << 1, L"");
	if(entry)
	{
		FUNC0(L"%*s" L"  dwVersion : %08x - %u\n", level << 1, L"", entry->header.dwVersion, entry->header.dwVersion);
		FUNC0(L"%*s" L"  guid      : ", level << 1, L""); FUNC2(&entry->header.guid); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwNextLen : %08x - %u\n", level << 1, L"", entry->header.dwNextLen, entry->header.dwNextLen);
		
		FUNC0(L"%*s" L"  dwType    : %08x - %u\n", level << 1, L"", entry->dwType, entry->dwType);
		FUNC0(L"%*s" L"  algHash   : %08x - %u (%s)\n", level << 1, L"", entry->algHash, entry->algHash, FUNC1(entry->algHash));
		FUNC0(L"%*s" L"  rounds    : %08x - %u\n", level << 1, L"", entry->rounds, entry->rounds);
		FUNC0(L"%*s" L"  sidLen    : %08x - %u\n", level << 1, L"", entry->sidLen, entry->sidLen);
		FUNC0(L"%*s" L"  algCrypt  : %08x - %u (%s)\n", level << 1, L"", entry->algCrypt, entry->algCrypt, FUNC1(entry->algCrypt));
		FUNC0(L"%*s" L"  sha1Len   : %08x - %u\n", level << 1, L"", entry->sha1Len, entry->sha1Len);
		FUNC0(L"%*s" L"  md4Len    : %08x - %u\n", level << 1, L"", entry->md4Len, entry->md4Len);
		
		FUNC0(L"%*s" L"  Salt      : ", level << 1, L""); FUNC4(entry->salt, sizeof(entry->salt), 0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  Sid       : ", level << 1, L""); FUNC3(entry->pSid); FUNC0(L"\n");
		FUNC0(L"%*s" L"  pSecret   : ", level << 1, L""); FUNC4(entry->pSecret, entry->__dwSecretLen, 0); FUNC0(L"\n\n");
	}
}