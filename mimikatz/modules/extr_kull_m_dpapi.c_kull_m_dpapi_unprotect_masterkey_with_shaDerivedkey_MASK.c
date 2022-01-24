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
struct TYPE_3__ {scalar_t__ algHash; scalar_t__ algCrypt; int __dwKeyLen; int pbKey; int /*<<< orphan*/  rounds; int /*<<< orphan*/  salt; } ;
typedef  int PVOID ;
typedef  TYPE_1__* PKULL_M_DPAPI_MASTERKEY ;
typedef  int PBYTE ;
typedef  int LPCVOID ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;
typedef  scalar_t__ ALG_ID ;

/* Variables and functions */
 scalar_t__ CALG_3DES ; 
 scalar_t__ CALG_HMAC ; 
 scalar_t__ CALG_SHA1 ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  KP_IV ; 
 int /*<<< orphan*/  LPTR ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC8 (scalar_t__) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (scalar_t__,int,int,int,int,int,int) ; 
 scalar_t__ FUNC14 (scalar_t__,int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 

BOOL FUNC15(PKULL_M_DPAPI_MASTERKEY masterkey, LPCVOID shaDerivedkey, DWORD shaDerivedkeyLen, PVOID *output, DWORD *outputLen)
{
	BOOL status = FALSE;
	HCRYPTPROV hSessionProv;
	HCRYPTKEY hSessionKey;
	ALG_ID HMACAlg;
	DWORD HMACLen, BlockLen, KeyLen, OutLen;
	PVOID  HMACHash, CryptBuffer, hmac1, hmac2;

	HMACAlg = (masterkey->algHash == CALG_HMAC) ? CALG_SHA1 : masterkey->algHash;
	HMACLen = FUNC11(HMACAlg);
	KeyLen =  FUNC9(masterkey->algCrypt);
	BlockLen = FUNC8(masterkey->algCrypt);

	if((HMACHash = FUNC3(LPTR, KeyLen + BlockLen)))
	{
		if(FUNC14(HMACAlg, shaDerivedkey, shaDerivedkeyLen, masterkey->salt, sizeof(masterkey->salt), masterkey->rounds, (PBYTE) HMACHash, KeyLen + BlockLen, TRUE))
		{
			if(FUNC12(masterkey->algCrypt, HMACHash, KeyLen, 0, &hSessionKey, &hSessionProv))
			{
				if(FUNC2(hSessionKey, KP_IV, (PBYTE) HMACHash + KeyLen, 0))
				{
					OutLen = masterkey->__dwKeyLen;
					if((CryptBuffer = FUNC3(LPTR, OutLen)))
					{
						FUNC6(CryptBuffer, masterkey->pbKey, OutLen);
						if(FUNC0(hSessionKey, 0, FALSE, 0, (PBYTE) CryptBuffer, &OutLen))
						{
							*outputLen = OutLen - 16 - HMACLen - ((masterkey->algCrypt == CALG_3DES) ? 4 : 0); // reversed
							if((hmac1 = FUNC3(LPTR, HMACLen)))
							{
								if(FUNC13(HMACAlg, shaDerivedkey, shaDerivedkeyLen, CryptBuffer, 16, hmac1, HMACLen))
								{
									if((hmac2 = FUNC3(LPTR, HMACLen)))
									{
										if(FUNC13(HMACAlg, hmac1, HMACLen, (PBYTE) CryptBuffer + OutLen - *outputLen, *outputLen, hmac2, HMACLen))
										{
											if((status = FUNC7(hmac2, (PBYTE) CryptBuffer + 16, HMACLen)))
											{
												if((*output = FUNC3(LPTR, *outputLen)))
													FUNC6(*output, (PBYTE) CryptBuffer + OutLen - *outputLen, *outputLen);
											}
										}
										FUNC4(hmac2);
									}
								}
								FUNC4(hmac1);
							}
						}
						FUNC4(CryptBuffer);
					}
				}
				FUNC1(hSessionKey);
				if(!FUNC10(hSessionProv))
					FUNC5(L"kull_m_crypto_close_hprov_delete_container");
			}
			else FUNC5(L"kull_m_crypto_hkey_session");
		}
		FUNC4(HMACHash);
	}
	return status;
}