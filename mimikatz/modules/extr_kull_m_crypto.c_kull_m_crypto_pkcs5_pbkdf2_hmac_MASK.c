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
typedef  int /*<<< orphan*/ * PDWORD ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/ * LPCVOID ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTHASH ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  HP_HASHVAL ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__,scalar_t__) ; 

BOOL FUNC11(DWORD calgid, LPCVOID password, DWORD passwordLen, LPCVOID salt, DWORD saltLen, DWORD iterations, BYTE *key, DWORD keyLen, BOOL isDpapiInternal)
{
	BOOL status = FALSE;
	HCRYPTPROV hProv;
	HCRYPTHASH hHash;
	DWORD sizeHmac, count, i, j, r;
	PBYTE asalt, obuf, d1;

	if(FUNC0(&hProv, NULL, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
	{
		if(FUNC1(hProv, calgid, 0, 0, &hHash))
		{
			if(FUNC3(hHash, HP_HASHVAL, NULL, &sizeHmac, 0))
			{
				if((asalt = (PBYTE) FUNC5(LPTR, saltLen + sizeof(DWORD))))
				{
					if((obuf = (PBYTE) FUNC5(LPTR, sizeHmac)))
					{
						if((d1 = (PBYTE) FUNC5(LPTR, sizeHmac)))
						{
							status = TRUE;
							FUNC7(asalt, salt, saltLen);
							for (count = 1; keyLen > 0; count++)
							{
								*(PDWORD) (asalt + saltLen) = FUNC8(count);
								FUNC9(calgid, password, passwordLen, asalt, saltLen + 4, d1, sizeHmac);
								FUNC7(obuf, d1, sizeHmac);
								for (i = 1; i < iterations; i++)
								{
									FUNC9(calgid, password, passwordLen, d1, sizeHmac, d1, sizeHmac);
									for (j = 0; j < sizeHmac; j++)
										obuf[j] ^= d1[j];
									if(isDpapiInternal) // thank you MS!
										FUNC7(d1, obuf, sizeHmac);
								}
								r = FUNC10(keyLen, sizeHmac);
								FUNC7(key, obuf, r);
								key += r;
								keyLen -= r;
							}
							FUNC6(d1);
						}
						FUNC6(obuf);
					}
					FUNC6(asalt);
				}
			}
			FUNC2(hHash);
		}
		FUNC4(hProv, 0);
	}
	return status;
}