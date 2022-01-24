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
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_CLOSE_STORE_FORCE_FLAG ; 
 int /*<<< orphan*/  CERT_KEY_PROV_INFO_PROP_ID ; 
 int /*<<< orphan*/  CERT_STORE_ADD_ALWAYS ; 
 int /*<<< orphan*/  CERT_STORE_ADD_NEW ; 
 int CERT_STORE_OPEN_EXISTING_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  X509_ASN_ENCODING ; 

BOOL FUNC6(LPCVOID der, DWORD derLen, PCRYPT_KEY_PROV_INFO pInfo, DWORD systemStore, LPCWSTR store, BOOL force)
{
	BOOL status = FALSE;
	HCERTSTORE hTempStore;
	PCCERT_CONTEXT pCertContext;
	if((hTempStore = FUNC3(CERT_STORE_PROV_SYSTEM, 0, 0, CERT_STORE_OPEN_EXISTING_FLAG | systemStore, store)))
	{
		if(FUNC0(hTempStore, X509_ASN_ENCODING, (LPCBYTE) der, derLen, force ? CERT_STORE_ADD_ALWAYS : CERT_STORE_ADD_NEW, &pCertContext))
		{
			if(!(status = FUNC4(pCertContext, CERT_KEY_PROV_INFO_PROP_ID, 0, (LPCVOID) pInfo)))
				FUNC5(L"CertSetCertificateContextProperty(CERT_KEY_PROV_INFO_PROP_ID)");
			FUNC2(pCertContext);
		}
		else FUNC5(L"CertAddEncodedCertificateToStore");
		FUNC1(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
	}
	return status;
}