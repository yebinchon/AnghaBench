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
struct TYPE_3__ {int /*<<< orphan*/  KeyBlob; int /*<<< orphan*/  unk1; int /*<<< orphan*/  unk0; } ;
typedef  TYPE_1__* PKULL_M_CRED_VAULT_POLICY_KEY ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(DWORD level, PKULL_M_CRED_VAULT_POLICY_KEY key)
{
	FUNC0(L"%*s" L"**VAULT POLICY KEY**\n", level << 1, L"");
	if(key)
	{
		FUNC0(L"%*s" L"  unk0  : ", level << 1, L""); FUNC2(&key->unk0); FUNC0(L"\n");
		FUNC0(L"%*s" L"  unk1  : ", level << 1, L""); FUNC2(&key->unk1); FUNC0(L"\n");
		FUNC1(level + 1, key->KeyBlob);
		FUNC0(L"\n");
	}
}