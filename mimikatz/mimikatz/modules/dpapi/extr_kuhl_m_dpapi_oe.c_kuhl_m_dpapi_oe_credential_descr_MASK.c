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
struct TYPE_4__ {int flags; int /*<<< orphan*/  md4protectedhash; int /*<<< orphan*/  sha1hash; int /*<<< orphan*/  md4hash; int /*<<< orphan*/  guid; scalar_t__ sid; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef  TYPE_2__* PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY ;

/* Variables and functions */
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID ; 
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4 ; 
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p ; 
 int KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1 ; 
 int /*<<< orphan*/  LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC3(PKUHL_M_DPAPI_OE_CREDENTIAL_ENTRY entry)
{
	if(entry)
	{
		if(entry->data.sid)
			FUNC0(L"SID:%s", entry->data.sid);
		FUNC0(L";");
		if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_GUID)
		{
			FUNC0(L"GUID:");
			FUNC1(&entry->data.guid);
		}
		FUNC0(L";");
		if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4)
		{
			FUNC0(L"MD4:");
			FUNC2(entry->data.md4hash, LM_NTLM_HASH_LENGTH, 0);
		}
		FUNC0(L";");
		if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_SHA1)
		{
			FUNC0(L"SHA1:");
			FUNC2(entry->data.sha1hash, SHA_DIGEST_LENGTH, 0);
		}
		FUNC0(L";");
		if(entry->data.flags & KUHL_M_DPAPI_OE_CREDENTIAL_FLAG_MD4p)
		{
			FUNC0(L"MD4p:");
			FUNC2(entry->data.md4protectedhash, LM_NTLM_HASH_LENGTH, 0);
		}
		FUNC0(L"\n");
	}
}