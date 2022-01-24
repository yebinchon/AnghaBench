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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PKULL_M_DPAPI_MASTERKEY ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int SHA_DIGEST_LENGTH ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

BOOL FUNC3(PKULL_M_DPAPI_MASTERKEY masterkey, LPCVOID userHash, DWORD userHashLen, PCWSTR sid, PVOID *output, DWORD *outputLen)
{
	BOOL status = FALSE;
	BYTE sha1DerivedKey[SHA_DIGEST_LENGTH];
	
	if(FUNC0(CALG_SHA1, userHash, userHashLen, sid, (DWORD) (FUNC2(sid) + 1) * sizeof(wchar_t), sha1DerivedKey, SHA_DIGEST_LENGTH))
		status = FUNC1(masterkey, sha1DerivedKey, SHA_DIGEST_LENGTH, output, outputLen);
	return status;
}