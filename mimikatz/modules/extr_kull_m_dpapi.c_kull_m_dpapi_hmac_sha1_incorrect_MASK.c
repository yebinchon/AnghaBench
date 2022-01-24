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
typedef  int /*<<< orphan*/  opad ;
typedef  int /*<<< orphan*/  ipad ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_SHA1 ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,char) ; 
 int SHA_DIGEST_LENGTH ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 

BOOL FUNC5(LPCVOID key, DWORD keyLen, LPCVOID salt, DWORD saltLen, LPCVOID entropy, DWORD entropyLen, LPCVOID data, DWORD dataLen, LPVOID outKey)
{
	BOOL status = FALSE;
	BYTE ipad[64], opad[64], hash[SHA_DIGEST_LENGTH], *bufferI, *bufferO;
	DWORD i;

	FUNC3(ipad, sizeof(ipad), '6');
	FUNC3(opad, sizeof(opad), '\\');
	for(i = 0; i < keyLen; i++)
	{
		ipad[i] ^= ((PBYTE) key)[i];
		opad[i] ^= ((PBYTE) key)[i];
	}
	if((bufferI = (PBYTE) FUNC0(LPTR, sizeof(ipad) + saltLen)))
	{
		FUNC2(bufferI, ipad, sizeof(ipad));
		FUNC2(bufferI + sizeof(ipad), salt, saltLen);
		if(FUNC4(CALG_SHA1, bufferI, sizeof(ipad) + saltLen, hash, SHA_DIGEST_LENGTH))
		{
			if((bufferO = (PBYTE) FUNC0(LPTR, sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen + dataLen)))
			{
				FUNC2(bufferO, opad, sizeof(opad));
				FUNC2(bufferO + sizeof(opad), hash, SHA_DIGEST_LENGTH);
				if(entropy && entropyLen)
					FUNC2(bufferO + sizeof(opad) + SHA_DIGEST_LENGTH, entropy, entropyLen);
				if(data && dataLen)
					FUNC2(bufferO + sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen, data, dataLen);
				
				status = FUNC4(CALG_SHA1, bufferO, sizeof(opad) + SHA_DIGEST_LENGTH + entropyLen + dataLen, outKey, SHA_DIGEST_LENGTH);
				FUNC1(bufferO);
			}
		}
		FUNC1(bufferI);
	}
	return status;
}