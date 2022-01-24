#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_8__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ pszObjId; } ;
struct TYPE_14__ {int /*<<< orphan*/  pbData; } ;
struct TYPE_13__ {TYPE_4__ Value; int /*<<< orphan*/  pszObjId; void* fCritical; } ;
struct TYPE_12__ {TYPE_3__* rgExtension; TYPE_8__ SignatureAlgorithm; int /*<<< orphan*/  Issuer; int /*<<< orphan*/  NextUpdate; int /*<<< orphan*/  ThisUpdate; int /*<<< orphan*/  cExtension; int /*<<< orphan*/  dwVersion; int /*<<< orphan*/  member_0; } ;
struct TYPE_11__ {int /*<<< orphan*/  crlnumber; scalar_t__ algorithm; } ;
typedef  int /*<<< orphan*/  PWSTR ;
typedef  int /*<<< orphan*/  PKIWI_SIGNER ;
typedef  TYPE_1__* PKIWI_CRL_INFO ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  PBYTE ;
typedef  int /*<<< orphan*/  HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_2__ CRL_INFO ;
typedef  TYPE_3__ CERT_EXTENSION ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  CRL_V2 ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  X509_CERT_CRL_TO_BE_SIGNED ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,TYPE_8__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  szOID_CRL_NUMBER ; 
 scalar_t__ szOID_RSA_SHA1RSA ; 

BOOL FUNC11(PKIWI_CRL_INFO ci, PCCERT_CONTEXT signer, PKIWI_SIGNER dSigner, PBYTE *Crl, DWORD *cbCrl)
{
	BOOL status = FALSE, isHw = FALSE, bFreeSignerKey;
	HCRYPTPROV_OR_NCRYPT_KEY_HANDLE hSigner = 0;
	DWORD dwSignerKeySpec;

	CERT_EXTENSION Extensions[2] = {0}; // AKI, CRL Number
	CRL_INFO CrlInfo = {0};
	PWSTR dn;

	CrlInfo.dwVersion = CRL_V2;
	CrlInfo.cExtension = FUNC0(Extensions);
	CrlInfo.rgExtension = Extensions;
	CrlInfo.SignatureAlgorithm.pszObjId = ci->algorithm ? ci->algorithm : szOID_RSA_SHA1RSA;

	FUNC6(&CrlInfo.ThisUpdate, &CrlInfo.NextUpdate, ci, signer, dSigner);

	CrlInfo.rgExtension[0].pszObjId = szOID_CRL_NUMBER;
	CrlInfo.rgExtension[0].fCritical = FALSE;
	if(FUNC9(CrlInfo.rgExtension[0].pszObjId, &ci->crlnumber, &CrlInfo.rgExtension[0].Value))
	{
		FUNC8(L"[s.crl ] algorithm : %S\n", CrlInfo.SignatureAlgorithm.pszObjId);
		FUNC8(L"[s.crl ] validity  : ");
		FUNC10(&CrlInfo.ThisUpdate);
		FUNC8(L" -> ");
		FUNC10(&CrlInfo.NextUpdate);
		FUNC8(L"\n");

		if(FUNC7(signer, dSigner, &hSigner, &dwSignerKeySpec, &bFreeSignerKey, &CrlInfo.rgExtension[1], &CrlInfo.Issuer))
		{
			if((dn = FUNC5(&CrlInfo.Issuer)))
			{
				FUNC8(L" [i.cert] subject  : %s\n", dn);
				FUNC1(dn);
			}
			FUNC8(L"[s.crl ] signature : ");
			if((status = FUNC4(hSigner, dwSignerKeySpec, X509_CERT_CRL_TO_BE_SIGNED, &CrlInfo, &CrlInfo.SignatureAlgorithm, Crl, cbCrl)))
				FUNC8(L"OK\n");
			FUNC3(bFreeSignerKey, dwSignerKeySpec, hSigner);
			FUNC1(CrlInfo.rgExtension[1].Value.pbData);
		}
		FUNC1(CrlInfo.rgExtension[0].Value.pbData);
	}
	else FUNC2(L"Unable to create CRL Number\n");
	return status;
}