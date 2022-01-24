#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  digest ;
struct TYPE_8__ {void* Blink; } ;
struct TYPE_6__ {TYPE_4__* Flink; void* Blink; } ;
struct TYPE_5__ {int /*<<< orphan*/ * keyHash; int /*<<< orphan*/  guid; } ;
struct TYPE_7__ {TYPE_2__ navigator; TYPE_1__ data; } ;
typedef  void* PLIST_ENTRY ;
typedef  TYPE_3__* PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  int /*<<< orphan*/ * LPCGUID ;
typedef  int /*<<< orphan*/  KUHL_M_DPAPI_OE_MASTERKEY_ENTRY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__ gDPAPI_Masterkeys ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

BOOL FUNC5(LPCGUID guid, LPCVOID keyHash, DWORD keyLen)
{
	BOOL status = FALSE;
	PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY entry;
	BYTE digest[SHA_DIGEST_LENGTH];

	if(guid && keyHash && keyLen)
	{
		if(!FUNC3(guid))
		{
			if(keyLen != SHA_DIGEST_LENGTH)
				FUNC4(CALG_SHA1, keyHash, keyLen, digest, sizeof(digest));

			if((entry = (PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) FUNC0(LPTR, sizeof(KUHL_M_DPAPI_OE_MASTERKEY_ENTRY))))
			{
				FUNC2(&entry->data.guid, guid, sizeof(GUID));
				FUNC2(entry->data.keyHash, (keyLen == SHA_DIGEST_LENGTH) ? keyHash : digest, SHA_DIGEST_LENGTH);
				entry->navigator.Blink = gDPAPI_Masterkeys.Blink;
				entry->navigator.Flink = &gDPAPI_Masterkeys;
				((PKUHL_M_DPAPI_OE_MASTERKEY_ENTRY) gDPAPI_Masterkeys.Blink)->navigator.Flink = (PLIST_ENTRY) entry;
				gDPAPI_Masterkeys.Blink= (PLIST_ENTRY) entry;
				status = TRUE;
			}
		}
	}
	else FUNC1(L"No GUID or Key Hash?");
	return status;
}