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
typedef  int /*<<< orphan*/  PBYTE ;
typedef  scalar_t__ LPVOID ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_AES_128 ; 
 scalar_t__ CRYPT_MODE_CBC ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KP_IV ; 
 int /*<<< orphan*/  KP_MODE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC10(LPCVOID pKey, LPCVOID pIV, LPCVOID pData, DWORD dwDataLen, LPVOID *pOut, DWORD *dwOutLen)
{
	BOOL status = FALSE;
	HCRYPTPROV hProv;
	HCRYPTKEY hKey;
	DWORD mode = CRYPT_MODE_CBC;

	if(FUNC0(&hProv, NULL, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
	{
		if(FUNC9(hProv, CALG_AES_128, pKey, 16, 0, &hKey, NULL))
		{
			if(FUNC4(hKey, KP_MODE, (LPCBYTE) &mode, 0))
			{
				if(FUNC4(hKey, KP_IV, (LPCBYTE) pIV, 0))
				{
					if((*pOut = FUNC5(LPTR, dwDataLen)))
					{
						*dwOutLen = dwDataLen;
						FUNC8(*pOut, pData, dwDataLen);
						if(!(status = FUNC1(hKey, 0, TRUE, 0, (PBYTE) *pOut, dwOutLen)))
						{
							FUNC7(L"CryptDecrypt");
							*pOut = FUNC6(*pOut);
							*dwOutLen = 0;
						}
					}
				}
				else FUNC7(L"CryptSetKeyParam (IV)");
			}
			else FUNC7(L"CryptSetKeyParam (MODE)");
			FUNC2(hKey);
		}
		else FUNC7(L"kull_m_crypto_hkey");
		FUNC3(hProv, 0);
	}
	else FUNC7(L"CryptAcquireContext");
	return status;
}