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
struct TYPE_8__ {void* Blink; } ;
struct TYPE_6__ {TYPE_4__* Flink; void* Blink; } ;
struct TYPE_5__ {int keyLen; int /*<<< orphan*/ * key; int /*<<< orphan*/  isNewKey; int /*<<< orphan*/  guid; } ;
struct TYPE_7__ {TYPE_2__ navigator; TYPE_1__ data; } ;
typedef  void* PLIST_ENTRY ;
typedef  TYPE_3__* PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int /*<<< orphan*/  KUHL_M_DPAPI_OE_DOMAINKEY_ENTRY ;
typedef  int /*<<< orphan*/  GUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_4__ gDPAPI_Domainkeys ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

BOOL FUNC4(LPCGUID guid, LPCVOID key, DWORD keyLen, BOOL isNewKey)
{
	BOOL status = FALSE;
	PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY entry;
	if(guid && key && keyLen)
	{
		if(!FUNC3(guid))
		{
			if((entry = (PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) FUNC0(LPTR, sizeof(KUHL_M_DPAPI_OE_DOMAINKEY_ENTRY))))
			{
				FUNC2(&entry->data.guid, guid, sizeof(GUID));
				entry->data.isNewKey = isNewKey;
				if((entry->data.key = (BYTE *) FUNC0(LPTR, keyLen)))
				{
					FUNC2(entry->data.key, key, keyLen);
					entry->data.keyLen = keyLen;
					status = TRUE;
				}
				entry->navigator.Blink = gDPAPI_Domainkeys.Blink;
				entry->navigator.Flink = &gDPAPI_Domainkeys;
				((PKUHL_M_DPAPI_OE_DOMAINKEY_ENTRY) gDPAPI_Domainkeys.Blink)->navigator.Flink = (PLIST_ENTRY) entry;
				gDPAPI_Domainkeys.Blink= (PLIST_ENTRY) entry;
			}
		}
	}
	else FUNC1(L"No GUID or Key?");
	return status;
}