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
struct TYPE_3__ {int __count; int /*<<< orphan*/ * Credentials; int /*<<< orphan*/  structSize; int /*<<< orphan*/  dwVersion; } ;
typedef  TYPE_1__* PKULL_M_CRED_LEGACY_CREDS_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

void FUNC2(DWORD level, PKULL_M_CRED_LEGACY_CREDS_BLOB creds)
{
	DWORD i;
	FUNC0(L"%*s" L"**LEGACY CREDENTIALS GROUP**\n", level << 1, L"");
	if(creds)
	{
		FUNC0(L"%*s" L"  dwVersion      : %08x - %u\n", level << 1, L"", creds->dwVersion, creds->dwVersion);
		FUNC0(L"%*s" L"  structSize     : %08x - %u\n", level << 1, L"", creds->structSize, creds->structSize);
		FUNC0(L"%*s" L"  Credentials    : %u\n", level << 1, L"", creds->__count);
		for(i = 0; i < creds->__count; i++)
			FUNC1(level + 1, creds->Credentials[i]);
	}
}