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
struct TYPE_3__ {int dwNameLen; int /*<<< orphan*/  dwPropertyLen; int /*<<< orphan*/  pProperty; int /*<<< orphan*/  pName; int /*<<< orphan*/  unk; int /*<<< orphan*/  type; int /*<<< orphan*/  dwStructLen; } ;
typedef  TYPE_1__* PKULL_M_KEY_CNG_PROPERTY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(DWORD level, PKULL_M_KEY_CNG_PROPERTY property)
{
	FUNC0(L"%*s" L"**KEY CNG PROPERTY**\n", level << 1, L"");
	if(property)
	{
		FUNC0(L"%*s" L"  dwStructLen     : %08x - %u\n", level << 1, L"", property->dwStructLen, property->dwStructLen);
		FUNC0(L"%*s" L"  type            : %08x - %u\n", level << 1, L"", property->type, property->type);
		FUNC0(L"%*s" L"  unk             : %08x - %u\n", level << 1, L"", property->unk, property->unk);
		FUNC0(L"%*s" L"  dwNameLen       : %08x - %u\n", level << 1, L"", property->dwNameLen, property->dwNameLen);
		FUNC0(L"%*s" L"  dwPropertyLen   : %08x - %u\n", level << 1, L"", property->dwPropertyLen, property->dwPropertyLen);
		FUNC0(L"%*s" L"  pName           : ", level << 1, L""); FUNC0(L"%.*s\n", property->dwNameLen / sizeof(wchar_t), property->pName);
		FUNC0(L"%*s" L"  pProperty       : ", level << 1, L""); FUNC1(property->pProperty, property->dwPropertyLen, 0); FUNC0(L"\n\n");
	}
}