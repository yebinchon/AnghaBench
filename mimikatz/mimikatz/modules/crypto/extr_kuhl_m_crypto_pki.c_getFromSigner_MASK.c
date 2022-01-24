#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_17__ {TYPE_1__* pCertInfo; } ;
struct TYPE_16__ {int /*<<< orphan*/  pwszContainerName; int /*<<< orphan*/  pwszProvName; } ;
struct TYPE_15__ {int /*<<< orphan*/  dwKeySpec; scalar_t__ hProv; int /*<<< orphan*/  Subject; } ;
struct TYPE_14__ {int /*<<< orphan*/  Subject; } ;
typedef  TYPE_2__* PKIWI_SIGNER ;
typedef  TYPE_3__* PCRYPT_KEY_PROV_INFO ;
typedef  TYPE_3__* PCERT_PUBLIC_KEY_INFO ;
typedef  int /*<<< orphan*/  PCERT_EXTENSION ;
typedef  TYPE_5__* PCCERT_CONTEXT ;
typedef  scalar_t__ HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CERT_NAME_BLOB ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_KEY_PROV_INFO_PROP_ID ; 
 int CRYPT_ACQUIRE_ALLOW_NCRYPT_KEY_FLAG ; 
 int CRYPT_ACQUIRE_CACHE_FLAG ; 
 scalar_t__ FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_5__*,int,int /*<<< orphan*/ *,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC9(PCCERT_CONTEXT signer, PKIWI_SIGNER dSigner, HCRYPTPROV_OR_NCRYPT_KEY_HANDLE *hSigner, DWORD *dwSignerKeySpec, BOOL *bFreeSignerKey, PCERT_EXTENSION aki, CERT_NAME_BLOB *nameIssuer)
{
	BOOL status = FALSE;
	DWORD dwSizeNeeded;
	PCRYPT_KEY_PROV_INFO pBuffer;
	PCERT_PUBLIC_KEY_INFO pbSignerPublicKeyInfo;

	if(signer)
	{
		*nameIssuer = signer->pCertInfo->Subject;
		if(FUNC0(signer, CERT_KEY_PROV_INFO_PROP_ID, NULL, &dwSizeNeeded))
		{
			if((pBuffer = (PCRYPT_KEY_PROV_INFO) FUNC2(LPTR, dwSizeNeeded)))
			{
				if(FUNC0(signer, CERT_KEY_PROV_INFO_PROP_ID, pBuffer, &dwSizeNeeded))
					FUNC8(L" [i.key ] provider : %s\n [i.key ] container: %s\n", pBuffer->pwszProvName, pBuffer->pwszContainerName);
				FUNC3(pBuffer);
			}
		}
		if(FUNC1(signer, CRYPT_ACQUIRE_CACHE_FLAG | CRYPT_ACQUIRE_ALLOW_NCRYPT_KEY_FLAG, NULL, hSigner, dwSignerKeySpec, bFreeSignerKey))
		{
			if((pbSignerPublicKeyInfo = FUNC6(*hSigner, *dwSignerKeySpec)))
			{
				status = FUNC7(aki, pbSignerPublicKeyInfo);
				FUNC3(pbSignerPublicKeyInfo);
			}
			if(!status)
				FUNC5(*bFreeSignerKey, *dwSignerKeySpec, *hSigner);
		}
		else FUNC4(L"CryptAcquireCertificatePrivateKey(signer)");
	}
	else if(dSigner)
	{
		*nameIssuer = dSigner->Subject;
		*hSigner = dSigner->hProv;
		*dwSignerKeySpec = dSigner->dwKeySpec;
		*bFreeSignerKey = FALSE;
		if((pbSignerPublicKeyInfo = FUNC6(*hSigner, *dwSignerKeySpec)))
		{
			status = FUNC7(aki, pbSignerPublicKeyInfo);
			FUNC3(pbSignerPublicKeyInfo);
		}
	}

	if(!status)
	{
		*hSigner = 0;
		*bFreeSignerKey = FALSE;
	}
	return status;
}