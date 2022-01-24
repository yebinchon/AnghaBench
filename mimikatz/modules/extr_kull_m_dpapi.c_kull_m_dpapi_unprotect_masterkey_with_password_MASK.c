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
typedef  int /*<<< orphan*/  sha2 ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  PKULL_M_DPAPI_MASTERKEY ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;
typedef  scalar_t__ ALG_ID ;

/* Variables and functions */
 scalar_t__ CALG_MD4 ; 
 scalar_t__ CALG_SHA1 ; 
 int /*<<< orphan*/  CALG_SHA_256 ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ *,int,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

BOOL FUNC7(DWORD flags, PKULL_M_DPAPI_MASTERKEY masterkey, PCWSTR password, PCWSTR sid, BOOL isKeyOfProtectedUser, PVOID *output, DWORD *outputLen)
{
	BOOL status = FALSE;
	ALG_ID PassAlg;
	DWORD PassLen, SidLen = (DWORD) FUNC6(sid) * sizeof(wchar_t);
	PVOID PassHash;
	BYTE sha2[32];
	
	PassAlg = (flags & 4) ? CALG_SHA1 : CALG_MD4;
	PassLen = FUNC3(PassAlg);
	if((PassHash = FUNC0(LPTR, PassLen)))
	{
		if(FUNC2(PassAlg, password, (DWORD) FUNC6(password) * sizeof(wchar_t), PassHash, PassLen))
		{
			if(isKeyOfProtectedUser && (PassAlg == CALG_MD4))
				if(FUNC4(CALG_SHA_256, PassHash, PassLen, sid, SidLen, 10000, sha2, sizeof(sha2), FALSE))
					FUNC4(CALG_SHA_256, sha2, sizeof(sha2), sid, SidLen, 1, (PBYTE) PassHash, PassLen, FALSE);

			status = FUNC5(masterkey, PassHash, PassLen, sid, output, outputLen);
		}
		FUNC1(PassHash);
	}
	return status;
}