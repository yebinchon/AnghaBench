#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_3__ {int dwAlgHashLen; int dwAlgCryptLen; scalar_t__ algCrypt; int dwDataLen; int /*<<< orphan*/  pbData; scalar_t__ algHash; int /*<<< orphan*/  dwSaltLen; int /*<<< orphan*/  pbSalt; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_1__* PKULL_M_DPAPI_BLOB ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int BOOL ;
typedef  scalar_t__ ALG_ID ;

/* Variables and functions */
 scalar_t__ CALG_3DES ; 
 scalar_t__ CALG_SHA1 ; 
 scalar_t__ CALG_SHA_512 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC9 (scalar_t__,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int,scalar_t__,int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 

BOOL FUNC12(PKULL_M_DPAPI_BLOB blob, LPCVOID masterkey, DWORD masterkeyLen, LPCVOID entropy, DWORD entropyLen, LPCWSTR password, LPVOID *dataOut, DWORD *dataOutLen)
{
	BOOL status = FALSE, iStatus = !password;
	PVOID hmac, key, hashPassword = NULL;
	HCRYPTPROV hSessionProv;
	HCRYPTKEY hSessionKey;
	DWORD hashLen =  blob->dwAlgHashLen / 8, cryptLen = blob->dwAlgCryptLen / 8, hashPasswordLen;
	ALG_ID passwordHash;

	if((blob->algCrypt == CALG_3DES) && (cryptLen < (192 / 8)))
		cryptLen = 192 / 8;

	if(!iStatus)
	{
		if(blob->algHash == CALG_SHA_512)
		{
			passwordHash = CALG_SHA_512;
			hashPasswordLen = hashLen;
		}
		else
		{
			passwordHash = CALG_SHA1;
			hashPasswordLen = SHA_DIGEST_LENGTH;
		}
		if((hashPassword = FUNC2(LPTR, hashPasswordLen)))
			iStatus = FUNC8(passwordHash, password, (DWORD) (FUNC11(password) * sizeof(wchar_t)), hashPassword, hashPasswordLen);
	}

	if(iStatus)
	{
		if((hmac = FUNC2(LPTR, hashLen)))
		{
			if(FUNC10(masterkey, masterkeyLen, blob->pbSalt, blob->dwSaltLen, entropy, entropyLen, hashPassword, hashPassword ? hashPasswordLen : 0, blob->algHash, hmac, hashLen))
			{
				if((key = FUNC2(LPTR, cryptLen)))
				{
					if(FUNC6(blob->algHash, hmac, hashLen, key, cryptLen))
					{
						if(FUNC9(blob->algCrypt, key, cryptLen, 0, &hSessionKey, &hSessionProv))
						{
							if((*dataOut = FUNC2(LPTR, blob->dwDataLen)))
							{
								FUNC5(*dataOut, blob->pbData, blob->dwDataLen);
								*dataOutLen = blob->dwDataLen;
								status = FUNC0(hSessionKey, 0, TRUE, 0, (LPBYTE) *dataOut, dataOutLen);
								if(!status)
								{
									FUNC3(*dataOut);	
									FUNC4(L"CryptDecrypt");
								}
							}
							FUNC1(hSessionKey);
							if(!FUNC7(hSessionProv))
								FUNC4(L"kull_m_crypto_close_hprov_delete_container");
						}
						else FUNC4(L"kull_m_crypto_hkey_session");
					}
					FUNC3(key);
				}
			}
			FUNC3(hmac);
		}
	}
	if(hashPassword)
		FUNC3(hashPassword);
	return status;
}