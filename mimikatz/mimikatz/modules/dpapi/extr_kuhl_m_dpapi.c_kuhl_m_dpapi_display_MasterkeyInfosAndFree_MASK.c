#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  digest ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/ * PSID ;
typedef  scalar_t__ LPCGUID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

void FUNC6(LPCGUID guid, PVOID data, DWORD dataLen, PSID sid)
{
	BYTE digest[SHA_DIGEST_LENGTH];
	
	FUNC1(L"  key : ");
	FUNC5(data, dataLen, 0);
	FUNC1(L"\n");
	if(FUNC3(CALG_SHA1, data, dataLen, digest, sizeof(digest)))
	{
		FUNC1(L"  sha1: ");
		FUNC5(digest, sizeof(digest), 0);
		FUNC1(L"\n");
		if(guid)
			FUNC2(guid, digest, sizeof(digest));
	}
	FUNC0(data);
	if(sid)
	{
		FUNC1(L"  sid : ");
		FUNC4(sid);
		FUNC1(L"\n");
		FUNC0(sid);
	}
}