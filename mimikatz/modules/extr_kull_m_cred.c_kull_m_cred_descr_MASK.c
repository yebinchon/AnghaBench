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
struct TYPE_3__ {int /*<<< orphan*/  AttributeCount; int /*<<< orphan*/  Attributes; int /*<<< orphan*/  CredentialBlobSize; int /*<<< orphan*/  CredentialBlob; int /*<<< orphan*/  UserName; int /*<<< orphan*/  TargetAlias; int /*<<< orphan*/  Comment; int /*<<< orphan*/  UnkData; int /*<<< orphan*/  TargetName; int /*<<< orphan*/  unk1; int /*<<< orphan*/  unk0; int /*<<< orphan*/  Persist; int /*<<< orphan*/  unkFlagsOrSize; int /*<<< orphan*/  LastWritten; int /*<<< orphan*/  Flags; int /*<<< orphan*/  Type; int /*<<< orphan*/  credUnk0; int /*<<< orphan*/  credSize; int /*<<< orphan*/  credFlags; } ;
typedef  TYPE_1__* PKULL_M_CRED_BLOB ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(DWORD level, PKULL_M_CRED_BLOB cred)
{
	FUNC0(L"%*s" L"**CREDENTIAL**\n", level << 1, L"");
	if(cred)
	{
		FUNC0(L"%*s" L"  credFlags      : %08x - %u\n", level << 1, L"", cred->credFlags, cred->credFlags);
		FUNC0(L"%*s" L"  credSize       : %08x - %u\n", level << 1, L"", cred->credSize, cred->credSize);
		FUNC0(L"%*s" L"  credUnk0       : %08x - %u\n\n", level << 1, L"", cred->credUnk0, cred->credUnk0);
		FUNC0(L"%*s" L"  Type           : %08x - %u - %s\n", level << 1, L"", cred->Type, cred->Type, FUNC2(cred->Type));
		FUNC0(L"%*s" L"  Flags          : %08x - %u\n", level << 1, L"", cred->Flags, cred->Flags);
		FUNC0(L"%*s" L"  LastWritten    : ", level << 1, L""); FUNC4(&cred->LastWritten); FUNC0(L"\n");
		FUNC0(L"%*s" L"  unkFlagsOrSize : %08x - %u\n", level << 1, L"", cred->unkFlagsOrSize, cred->unkFlagsOrSize);
		FUNC0(L"%*s" L"  Persist        : %08x - %u - %s\n", level << 1, L"", cred->Persist, cred->Persist, FUNC1(cred->Persist));
		FUNC0(L"%*s" L"  AttributeCount : %08x - %u\n", level << 1, L"", cred->AttributeCount, cred->AttributeCount);
		FUNC0(L"%*s" L"  unk0           : %08x - %u\n", level << 1, L"", cred->unk0, cred->unk0);
		FUNC0(L"%*s" L"  unk1           : %08x - %u\n", level << 1, L"", cred->unk1, cred->unk1);
		FUNC0(L"%*s" L"  TargetName     : %s\n", level << 1, L"", cred->TargetName);
		FUNC0(L"%*s" L"  UnkData        : %s\n", level << 1, L"", cred->UnkData);
		FUNC0(L"%*s" L"  Comment        : %s\n", level << 1, L"", cred->Comment);
		FUNC0(L"%*s" L"  TargetAlias    : %s\n", level << 1, L"", cred->TargetAlias);
		FUNC0(L"%*s" L"  UserName       : %s\n", level << 1, L"", cred->UserName);
		FUNC0(L"%*s" L"  CredentialBlob : ", level << 1, L"");
		FUNC5(cred->CredentialBlob, cred->CredentialBlobSize);
		FUNC0(L"\n");
		FUNC0(L"%*s" L"  Attributes     : %u\n", level << 1, L"", cred->AttributeCount);
		FUNC3(level + 1, cred->Attributes, cred->AttributeCount);
	}
}