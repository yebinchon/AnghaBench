#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int dwSecretLen; int pbSecret; int dwAccesscheckLen; int pbAccesscheck; } ;
struct TYPE_17__ {int buffer; int cbMasterKey; scalar_t__ dataLen; scalar_t__ data; } ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PSID ;
typedef  TYPE_3__* PKULL_M_DPAPI_MASTERKEY_DOMAINKEY ;
typedef  TYPE_1__* PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY ;
typedef  TYPE_1__* PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK ;
typedef  int PBYTE ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CALG_3DES ; 
 int /*<<< orphan*/  CALG_SHA1 ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int,TYPE_1__*,TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  KP_IV ; 
 int /*<<< orphan*/  LPTR ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int,int) ; 
 scalar_t__ FUNC12 (int,int /*<<< orphan*/ *,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

BOOL FUNC16(PKULL_M_DPAPI_MASTERKEY_DOMAINKEY domainkey, LPCVOID key, DWORD keyLen, PVOID *output, DWORD *outputLen, PSID *sid)
{
	BOOL status = FALSE;
	HCRYPTPROV hProv, hSessionProv;
	HCRYPTKEY hKey, hSessionKey;
	PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY rsa_buffer;
	PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK des_buffer;
	BYTE digest[SHA_DIGEST_LENGTH];
	DWORD cbOutput;
	PSID pSid;
	
	if(FUNC1(&hProv, NULL, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
	{
		if(FUNC4(hProv, (PBYTE) key, keyLen, 0, 0, &hKey))
		{
			cbOutput = domainkey->dwSecretLen;
			if((rsa_buffer = (PKULL_M_DPAPI_DOMAIN_RSA_MASTER_KEY) FUNC8(LPTR, cbOutput)))
			{
				FUNC11(rsa_buffer, domainkey->pbSecret, cbOutput);
				if(FUNC2(hKey, 0, TRUE, 0, (PBYTE) rsa_buffer, &cbOutput))
				{
					//kprintf(L"\nRSA decrypt is a success\n");
					//kprintf(L" * MasterKey len: %u\n", rsa_buffer->cbMasterKey);
					//kull_m_string_wprintf_hex(rsa_buffer->buffer, rsa_buffer->cbMasterKey, 1 | (16 << 16));
					//kprintf(L" * SuppKey   len: %u\n", rsa_buffer->cbSuppKey);
					//kull_m_string_wprintf_hex(rsa_buffer->buffer + rsa_buffer->cbMasterKey, rsa_buffer->cbSuppKey, 1 | (16 << 16));
					if(FUNC15(hProv, CALG_3DES, rsa_buffer->buffer + rsa_buffer->cbMasterKey, 192 / 8, 0, &hSessionKey, &hSessionProv))
					{
						if(FUNC6(hSessionKey, KP_IV, rsa_buffer->buffer + rsa_buffer->cbMasterKey + 192 / 8, 0))
						{
							cbOutput = domainkey->dwAccesscheckLen;

							if((des_buffer = (PKULL_M_DPAPI_DOMAIN_ACCESS_CHECK) FUNC8(LPTR, cbOutput)))
							{
								FUNC11(des_buffer, domainkey->pbAccesscheck, cbOutput);

								if(FUNC2(hSessionKey, 0, FALSE, 0, (PBYTE) des_buffer, &cbOutput))
								{
									pSid = (PSID) (des_buffer->data + des_buffer->dataLen);
									//kprintf(L"\n3DES decrypt is a success too\n");
									////kull_m_string_wprintf_hex(des_buffer, outSize, 1 | (16 << 16)); kprintf(L"\n");
									//kprintf(L" * nonce    : "); kull_m_string_wprintf_hex(des_buffer->data, des_buffer->dataLen, 0); kprintf(L"\n"); // try to leave it as is =)
									//kprintf(L" * SID      : "); kull_m_string_displaySID(pSid); kprintf(L"\n");
									//kprintf(L" * SHA1     : "); kull_m_string_wprintf_hex((PBYTE) des_buffer + cbOutput - SHA_DIGEST_LENGTH, SHA_DIGEST_LENGTH, 0); kprintf(L"\n");
									if(FUNC14(CALG_SHA1, des_buffer, cbOutput - SHA_DIGEST_LENGTH, digest, SHA_DIGEST_LENGTH))
									{
										//kprintf(L" > Calc SHA1: "); kull_m_string_wprintf_hex(digest, SHA_DIGEST_LENGTH, 0); kprintf(L"\n");
										if(FUNC12((PBYTE) des_buffer + cbOutput - SHA_DIGEST_LENGTH, digest, SHA_DIGEST_LENGTH))
										{
											*outputLen = rsa_buffer->cbMasterKey;
											if((*output = FUNC8(LPTR, *outputLen)))
											{
												FUNC11(*output, rsa_buffer->buffer, *outputLen);
												status = TRUE;
												*sid = NULL;
												if(sid)
												{
													status = FALSE;
													cbOutput = FUNC7(pSid);
													if((*sid = (PSID) FUNC8(LPTR, cbOutput)))
														status = FUNC0(cbOutput, *sid, pSid);
												}
												if(!status)
												{
													if(*output)
														*output = FUNC9(*output);
													if(*sid)
														*sid = FUNC9(*sid);
													*outputLen = 0;
												}
											}
										}
									}
								}
								else FUNC10(L"CryptDecrypt");
								FUNC9(des_buffer);
							}
						}
						else FUNC10(L"CryptSetKeyParam");
						FUNC3(hSessionKey);
						if(!FUNC13(hSessionProv))
							FUNC10(L"kull_m_crypto_close_hprov_delete_container");
					}
				}
				else FUNC10(L"CryptDecrypt");
				FUNC9(rsa_buffer);
			}
			FUNC3(hKey);
		}
		FUNC5(hProv, 0);
	}
	return status;
}