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
struct TYPE_5__ {int count; TYPE_1__** entries; int /*<<< orphan*/  unk; int /*<<< orphan*/  version; } ;
struct TYPE_4__ {int id; int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__* PKULL_M_CRED_VAULT_CLEAR ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC2(DWORD level, PKULL_M_CRED_VAULT_CLEAR clear)
{
	DWORD i;
	FUNC0(L"%*s" L"**VAULT CREDENTIAL CLEAR ATTRIBUTES**\n", level << 1, L"");
	if(clear)
	{
		FUNC0(L"%*s" L"  version: %08x - %u\n", level << 1, L"", clear->version, clear->version);
		FUNC0(L"%*s" L"  count  : %08x - %u\n", level << 1, L"", clear->count, clear->count);
		FUNC0(L"%*s" L"  unk    : %08x - %u\n", level << 1, L"", clear->unk, clear->unk);
		if(clear->entries)
		{
			FUNC0(L"\n");
			for(i = 0; i < clear->count; i++)
			{
				FUNC0(L"%*s" L"  * ", level << 1, L"");
				switch(clear->entries[i]->id)
				{
				case 1:
					FUNC0(L"ressource     : ");
					break;
				case 2:
					FUNC0(L"identity      : ");
					break;
				case 3:
					FUNC0(L"authenticator : ");
					break;
				default:
					FUNC0(L"property %3u  : ", clear->entries[i]->id);
					break;
				}
				FUNC1(clear->entries[i]->data, clear->entries[i]->size);
				FUNC0(L"\n");
			}
		}
	}
}