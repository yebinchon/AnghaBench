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
struct TYPE_5__ {int dwAttributesMapSize; int __cbElements; int /*<<< orphan*/ * attributes; TYPE_1__* attributesMap; int /*<<< orphan*/  FriendlyName; int /*<<< orphan*/  unk2; int /*<<< orphan*/  unk1; int /*<<< orphan*/  LastWritten; int /*<<< orphan*/  unk0; int /*<<< orphan*/  SchemaId; } ;
struct TYPE_4__ {int /*<<< orphan*/  unk; int /*<<< orphan*/  offset; int /*<<< orphan*/  id; } ;
typedef  TYPE_2__* PKULL_M_CRED_VAULT_CREDENTIAL ;
typedef  int /*<<< orphan*/  KULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE_MAP ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(DWORD level, PKULL_M_CRED_VAULT_CREDENTIAL credential)
{
	DWORD i;
	FUNC0(L"%*s" L"**VAULT CREDENTIAL**\n", level << 1, L"");
	if(credential)
	{
		FUNC0(L"%*s" L"  SchemaId            : ", level << 1, L""); FUNC3(&credential->SchemaId); FUNC0(L"\n");
		FUNC0(L"%*s" L"  unk0                : %08x - %u\n", level << 1, L"", credential->unk0, credential->unk0);
		FUNC0(L"%*s" L"  LastWritten         : ", level << 1, L""); FUNC2(&credential->LastWritten); FUNC0(L"\n");
		FUNC0(L"%*s" L"  unk1                : %08x - %u\n", level << 1, L"", credential->unk1, credential->unk1);
		FUNC0(L"%*s" L"  unk2                : %08x - %u\n", level << 1, L"", credential->unk2, credential->unk2);
		FUNC0(L"%*s" L"  FriendlyName        : %s\n", level << 1, L"", credential->FriendlyName);
		FUNC0(L"%*s" L"  dwAttributesMapSize : %08x - %u\n", level << 1, L"", credential->dwAttributesMapSize, credential->dwAttributesMapSize);
		for(i = 0; i < (credential->dwAttributesMapSize / sizeof(KULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE_MAP)); i++)
			FUNC0(L"%*s" L"  * Attribute %3u @ offset %08x - %u  (unk %08x - %u)\n", level << 1, L"", credential->attributesMap[i].id, credential->attributesMap[i].offset, credential->attributesMap[i].offset, credential->attributesMap[i].unk, credential->attributesMap[i].unk);
		for(i = 0; i < credential->__cbElements; i++)
			FUNC1(level + 1, credential->attributes[i]);
		FUNC0(L"\n");
	}
}