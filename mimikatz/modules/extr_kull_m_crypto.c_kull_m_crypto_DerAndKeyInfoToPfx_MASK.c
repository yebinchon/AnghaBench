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
typedef  scalar_t__ PCRYPT_KEY_PROV_INFO ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  scalar_t__ LPCVOID ;
typedef  int /*<<< orphan*/  LPCBYTE ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_CLOSE_STORE_FORCE_FLAG ; 
 int /*<<< orphan*/  CERT_KEY_PROV_INFO_PROP_ID ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int /*<<< orphan*/  CERT_STORE_CREATE_NEW_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_MEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

BOOL FUNC7(LPCVOID der, DWORD derLen, PCRYPT_KEY_PROV_INFO pInfo, LPCWSTR filename)
{
	BOOL isExported = FALSE;
	HCERTSTORE hTempStore;
	PCCERT_CONTEXT pCertContext;
	if((hTempStore = FUNC3(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, NULL)))
	{
		if(FUNC0(hTempStore, X509_ASN_ENCODING, (LPCBYTE) der, derLen, CERT_STORE_ADD_NEW, &pCertContext))
		{
			if(FUNC4(pCertContext, CERT_KEY_PROV_INFO_PROP_ID, 0, (LPCVOID) pInfo))
				isExported = FUNC6(hTempStore, filename);
			else FUNC5(L"CertSetCertificateContextProperty(CERT_KEY_PROV_INFO_PROP_ID)");
			FUNC2(pCertContext);
		}
		else FUNC5(L"CertAddEncodedCertificateToStore");
		FUNC1(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
	}
	return isExported;
}