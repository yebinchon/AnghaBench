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
typedef  int /*<<< orphan*/ * PCERT_PUBLIC_KEY_INFO ;
typedef  int /*<<< orphan*/  HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LPTR ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int X509_ASN_ENCODING ; 

PCERT_PUBLIC_KEY_INFO FUNC4(HCRYPTPROV_OR_NCRYPT_KEY_HANDLE hProv, DWORD dwKeySpec)
{
	PCERT_PUBLIC_KEY_INFO info = NULL;
	DWORD cbInfo;
	if(FUNC0(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, NULL, &cbInfo))
	{
		if((info = (PCERT_PUBLIC_KEY_INFO) FUNC1(LPTR, cbInfo)))
		{
			if(!FUNC0(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, info, &cbInfo))
			{
				FUNC3(L"CryptExportPublicKeyInfo (data)");
				info = (PCERT_PUBLIC_KEY_INFO) FUNC2(info);
			}
		}
	}
	else FUNC3(L"CryptExportPublicKeyInfo (init)");
	return info;
}