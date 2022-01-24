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
typedef  int PBYTE ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ ALG_ID ;

/* Variables and functions */
 scalar_t__ CALG_SHA1 ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *,int) ; 
 int SHA_DIGEST_LENGTH ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ *,int,int,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

BOOL FUNC6(LPCVOID masterkey, DWORD masterkeyLen, LPCVOID salt, DWORD saltLen, LPCVOID entropy, DWORD entropyLen, LPCVOID data, DWORD dataLen, ALG_ID hashAlg, LPVOID outKey, DWORD outKeyLen)
{
	BOOL status = FALSE;
	LPCVOID pKey = NULL;
	BYTE dgstMasterKey[SHA_DIGEST_LENGTH];
	PBYTE tmp;
	if(masterkeyLen == SHA_DIGEST_LENGTH)
		pKey = masterkey;
	else if(FUNC3(CALG_SHA1, masterkey, masterkeyLen, dgstMasterKey, SHA_DIGEST_LENGTH))
		pKey = dgstMasterKey;
	
	if(pKey)
	{
		if((hashAlg == CALG_SHA1) && (entropy || data))
			status = FUNC5(masterkey, masterkeyLen, salt, saltLen, entropy, entropyLen, data, dataLen, outKey);
		else if((tmp = (PBYTE) FUNC0(LPTR, saltLen + entropyLen + dataLen)))
		{
			FUNC2(tmp, salt, saltLen);
			if(entropy && entropyLen)
				FUNC2(tmp + saltLen, entropy, entropyLen);
			if(data && dataLen)
				FUNC2(tmp + saltLen + entropyLen, data, dataLen);
			status = FUNC4(hashAlg, pKey, SHA_DIGEST_LENGTH, tmp, saltLen + entropyLen + dataLen, outKey, outKeyLen);
			FUNC1(tmp);
		}
	}
	return status;
}