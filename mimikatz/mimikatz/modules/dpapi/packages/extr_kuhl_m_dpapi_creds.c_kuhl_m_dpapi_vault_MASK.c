#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_15__ {size_t __cbElements; TYPE_3__** attributes; } ;
struct TYPE_14__ {int id; size_t szData; scalar_t__ data; } ;
struct TYPE_13__ {TYPE_1__* key; } ;
struct TYPE_12__ {int /*<<< orphan*/  dwKeyBlob; int /*<<< orphan*/  KeyBlob; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_2__* PKULL_M_CRED_VAULT_POLICY ;
typedef  TYPE_3__* PKULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE ;
typedef  TYPE_4__* PKULL_M_CRED_VAULT_CREDENTIAL ;
typedef  int /*<<< orphan*/  PKULL_M_CRED_VAULT_CLEAR ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  HCRYPTPROV ;
typedef  int /*<<< orphan*/  HCRYPTKEY ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int AES_128_KEY_SIZE ; 
 int AES_256_KEY_SIZE ; 
 size_t CRYPT_MODE_CBC ; 
 int /*<<< orphan*/  CRYPT_VERIFYCONTEXT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LPTR ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_AES ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__,size_t) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,char*) ; 
 scalar_t__ FUNC10 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 TYPE_2__* FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 scalar_t__ FUNC22 (int,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *,size_t,int) ; 

NTSTATUS FUNC24(int argc, wchar_t * argv[])
{
	PCWSTR inFilePolicy, inFileCred;
	PVOID filePolicy, fileCred, out;
	DWORD szFilePolicy, szFileCred, szOut, len, i, mode = CRYPT_MODE_CBC;
	BYTE aes128[AES_128_KEY_SIZE], aes256[AES_256_KEY_SIZE];
	PKULL_M_CRED_VAULT_POLICY vaultPolicy;
	PKULL_M_CRED_VAULT_CREDENTIAL vaultCredential;
	PKULL_M_CRED_VAULT_CREDENTIAL_ATTRIBUTE attribute;
	PKULL_M_CRED_VAULT_CLEAR clear;
	PVOID buffer;
	BOOL isAttr;
	HCRYPTPROV hProv;
	HCRYPTKEY hKey;
	
	if(FUNC22(argc, argv, L"cred", &inFileCred, NULL))
	{
		if(FUNC21(inFileCred, (PBYTE *) &fileCred, &szFileCred))
		{
			if((vaultCredential = FUNC14(fileCred)))
			{
				FUNC16(0, vaultCredential);

				if(FUNC22(argc, argv, L"policy", &inFilePolicy, NULL))
				{
					if(FUNC21(inFilePolicy, (PBYTE *) &filePolicy, &szFilePolicy))
					{
						if((vaultPolicy = FUNC17(filePolicy)))
						{
							FUNC19(0, vaultPolicy);
							if(FUNC9(vaultPolicy->key->KeyBlob, vaultPolicy->key->dwKeyBlob, NULL, argc, argv, NULL, 0, &out, &szOut, L"Decrypting Policy Keys:\n"))
							{
								if(FUNC20(out, szOut, aes128, aes256))
								{
									FUNC8(L"  AES128 key: "); FUNC23(aes128, AES_128_KEY_SIZE, 0); FUNC8(L"\n");
									FUNC8(L"  AES256 key: "); FUNC23(aes256, AES_256_KEY_SIZE, 0); FUNC8(L"\n\n");
									
									if(FUNC0(&hProv, NULL, NULL, PROV_RSA_AES, CRYPT_VERIFYCONTEXT))
									{
										for(i = 0; i < vaultCredential->__cbElements; i++)
										{
											if((attribute = vaultCredential->attributes[i]))
											{
												FUNC8(L"  > Attribute %u : ", attribute->id);
												if(attribute->data && (len = attribute->szData))
												{
													if((buffer = FUNC3(LPTR, len)))
													{
														FUNC7(buffer, attribute->data, len);
														if(FUNC10(attribute, hProv, aes128, aes256, &hKey, &isAttr))
														{
															if(FUNC1(hKey, 0, TRUE, 0, (PBYTE) buffer, &len))
															{
																if(isAttr)
																{
																	FUNC23(buffer, len, 0);
																}
																else
																{
																	FUNC8(L"\n");
																	if(!attribute->id || (attribute->id == 100))
																	{
																		if((clear = FUNC11(buffer)))
																		{
																			FUNC13(1, clear);
																			FUNC12(clear);
																		}
																	}
																	else FUNC23(buffer, len, 1 | (16 << 16));
																	FUNC8(L"\n");
																}
															}
															else FUNC6(L"CryptDecrypt");
														}
														FUNC4(buffer);
													}
												}
												FUNC8(L"\n");
											}
										}
										FUNC2(hProv, 0);
									}
								}
								FUNC4(out);
							}
							FUNC18(vaultPolicy);
						}
						FUNC4(filePolicy);
					}
					else FUNC6(L"kull_m_file_readData (policy)");
				}
				FUNC15(vaultCredential);
			}
			FUNC4(fileCred);
		}
		else FUNC6(L"kull_m_file_readData (cred)");
	}
	else FUNC5(L"Input Cred file needed (/cred:file)\n");
				
	return STATUS_SUCCESS;
}