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
struct TYPE_3__ {int /*<<< orphan*/  ValueSize; int /*<<< orphan*/  Value; int /*<<< orphan*/  Keyword; int /*<<< orphan*/  Flags; } ;
typedef  TYPE_1__* PKULL_M_CRED_ATTRIBUTE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(DWORD level, PKULL_M_CRED_ATTRIBUTE Attribute)
{
	FUNC0(L"%*s" L"**ATTRIBUTE**\n", level << 1, L"");
	if(Attribute)
	{
		FUNC0(L"%*s" L"  Flags   : %08x - %u\n", level << 1, L"", Attribute->Flags, Attribute->Flags);
		FUNC0(L"%*s" L"  Keyword : %s\n", level << 1, L"", Attribute->Keyword);
		FUNC0(L"%*s" L"  Value   : ", level << 1, L"");
		FUNC1(Attribute->Value, Attribute->ValueSize);
		FUNC0(L"\n");
	}
}