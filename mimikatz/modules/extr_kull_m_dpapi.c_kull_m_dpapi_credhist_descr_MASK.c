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
struct TYPE_5__ {int __dwCount; int /*<<< orphan*/ * entries; TYPE_1__ current; } ;
typedef  TYPE_2__* PKULL_M_DPAPI_CREDHIST ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(DWORD level, PKULL_M_DPAPI_CREDHIST credhist)
{
	DWORD i;
	FUNC0(L"%*s" L"**CREDHIST**\n", level << 1, L"");
	if(credhist)
	{
		FUNC0(L"%*s" L"  dwVersion : %08x - %u\n", level << 1, L"", credhist->current.dwVersion, credhist->current.dwVersion);
		FUNC0(L"%*s" L"  guid      : ", level << 1, L""); FUNC2(&credhist->current.guid); FUNC0(L"\n");
		FUNC0(L"%*s" L"  dwNextLen : %08x - %u\n", level << 1, L"", credhist->current.dwNextLen, credhist->current.dwNextLen);
		for(i = 0; i < credhist->__dwCount; i++)
			FUNC1(level + 1, credhist->entries[i]);
		FUNC0(L"\n");
	}
}