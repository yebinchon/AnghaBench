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
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int BOOL ;
typedef  int /*<<< orphan*/  ALG_ID ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,char) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int) ; 

BOOL FUNC4(ALG_ID hashId, LPVOID hash, DWORD hashLen, LPVOID key, DWORD keyLen)
{
	BOOL status = FALSE;
	BYTE buffer[152], ipad[64], opad[64];
	DWORD i;
	
	if((status = (hashLen >= keyLen)))
		FUNC0(key, hash, keyLen);
	else
	{
		FUNC1(ipad, sizeof(ipad), '6');
		FUNC1(opad, sizeof(opad), '\\');
		for(i = 0; i < hashLen; i++)
		{
			ipad[i] ^= ((PBYTE) hash)[i];
			opad[i] ^= ((PBYTE) hash)[i];
		}
		if(FUNC2(hashId, ipad, sizeof(ipad), buffer, hashLen))
			if((status = FUNC2(hashId, opad, sizeof(opad), buffer + hashLen, hashLen)))
				FUNC0(key, buffer, FUNC3(keyLen, 2 * hashLen));
	}
	return status;
}