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
struct TYPE_4__ {int /*<<< orphan*/  guid; } ;
struct TYPE_5__ {TYPE_1__ header; int /*<<< orphan*/  pSid; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  TYPE_2__* PKULL_M_DPAPI_CREDHIST_ENTRY ;
typedef  int /*<<< orphan*/  LPCVOID ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LM_NTLM_HASH_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(PKULL_M_DPAPI_CREDHIST_ENTRY entry, LPCVOID ntlm, LPCVOID sha1)
{
	PWSTR currentStringSid;
	FUNC2(L"   "); FUNC5(entry->pSid); FUNC2(L" -- "); FUNC4(&entry->header.guid); FUNC2(L"\n");
	FUNC2(L"   > NTLM: "); FUNC6(ntlm, LM_NTLM_HASH_LENGTH, 0); FUNC2(L"\n");
	FUNC2(L"   > SHA1: "); FUNC6(sha1, SHA_DIGEST_LENGTH, 0); FUNC2(L"\n");
	if(FUNC0(entry->pSid, &currentStringSid))
	{
		FUNC3(currentStringSid, &entry->header.guid, ntlm, sha1, NULL, NULL);
		FUNC1(currentStringSid);
	}
}