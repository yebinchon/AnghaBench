#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_6__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {void* Blink; } ;
struct TYPE_8__ {TYPE_6__* Flink; void* Blink; } ;
struct TYPE_7__ {int /*<<< orphan*/  sid; } ;
struct TYPE_9__ {TYPE_2__ navigator; TYPE_1__ data; } ;
typedef  void* PLIST_ENTRY ;
typedef  TYPE_3__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef  scalar_t__ LPCWSTR ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  LPCGUID ;
typedef  int /*<<< orphan*/  KUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_6__ gDPAPI_Credentials ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 

BOOL FUNC5(LPCWSTR sid, LPCGUID guid, LPCVOID md4hash, LPCVOID sha1hash, LPCVOID md4protectedhash, LPCWSTR password)
{
	BOOL status = FALSE;
	PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry;

	if(sid)
	{
		if(!(entry = FUNC4(sid, guid)))
		{
			if((entry = (PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) FUNC0(LPTR, sizeof(KUHL_M_DPAPI_OE_CREDENTIAL_ENTRY))))
			{
				entry->data.sid = FUNC2(sid);
				entry->navigator.Blink = gDPAPI_Credentials.Blink;
				entry->navigator.Flink = &gDPAPI_Credentials;
				((PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY) gDPAPI_Credentials.Blink)->navigator.Flink = (PLIST_ENTRY) entry;
				gDPAPI_Credentials.Blink= (PLIST_ENTRY) entry;
			}
		}
		if(entry)
			status = FUNC3(entry, guid, md4hash, sha1hash, md4protectedhash, password);
	}
	else FUNC1(L"No SID?");
	return status;
}