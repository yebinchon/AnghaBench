
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_8__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {scalar_t__ pszObjId; } ;
struct TYPE_14__ {int pbData; } ;
struct TYPE_13__ {TYPE_4__ Value; int pszObjId; void* fCritical; } ;
struct TYPE_12__ {TYPE_3__* rgExtension; TYPE_8__ SignatureAlgorithm; int Issuer; int NextUpdate; int ThisUpdate; int cExtension; int dwVersion; int member_0; } ;
struct TYPE_11__ {int crlnumber; scalar_t__ algorithm; } ;
typedef int PWSTR ;
typedef int PKIWI_SIGNER ;
typedef TYPE_1__* PKIWI_CRL_INFO ;
typedef int PCCERT_CONTEXT ;
typedef int PBYTE ;
typedef int HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef int DWORD ;
typedef TYPE_2__ CRL_INFO ;
typedef TYPE_3__ CERT_EXTENSION ;
typedef void* BOOL ;


 int ARRAYSIZE (TYPE_3__*) ;
 int CRL_V2 ;
 void* FALSE ;
 int LocalFree (int ) ;
 int PRINT_ERROR (char*) ;
 int X509_CERT_CRL_TO_BE_SIGNED ;
 int closeHprov (void*,int ,int ) ;
 void* getCertificate (int ,int ,int ,TYPE_2__*,TYPE_8__*,int *,int *) ;
 int getCertificateName (int *) ;
 int getDate (int *,int *,TYPE_1__*,int ,int ) ;
 scalar_t__ getFromSigner (int ,int ,int *,int *,void**,TYPE_3__*,int *) ;
 int kprintf (char*,...) ;
 scalar_t__ kuhl_m_crypto_c_sc_auth_quickEncode (int ,int *,TYPE_4__*) ;
 int kull_m_string_displayLocalFileTime (int *) ;
 int szOID_CRL_NUMBER ;
 scalar_t__ szOID_RSA_SHA1RSA ;

BOOL generateCrl(PKIWI_CRL_INFO ci, PCCERT_CONTEXT signer, PKIWI_SIGNER dSigner, PBYTE *Crl, DWORD *cbCrl)
{
 BOOL status = FALSE, isHw = FALSE, bFreeSignerKey;
 HCRYPTPROV_OR_NCRYPT_KEY_HANDLE hSigner = 0;
 DWORD dwSignerKeySpec;

 CERT_EXTENSION Extensions[2] = {0};
 CRL_INFO CrlInfo = {0};
 PWSTR dn;

 CrlInfo.dwVersion = CRL_V2;
 CrlInfo.cExtension = ARRAYSIZE(Extensions);
 CrlInfo.rgExtension = Extensions;
 CrlInfo.SignatureAlgorithm.pszObjId = ci->algorithm ? ci->algorithm : szOID_RSA_SHA1RSA;

 getDate(&CrlInfo.ThisUpdate, &CrlInfo.NextUpdate, ci, signer, dSigner);

 CrlInfo.rgExtension[0].pszObjId = szOID_CRL_NUMBER;
 CrlInfo.rgExtension[0].fCritical = FALSE;
 if(kuhl_m_crypto_c_sc_auth_quickEncode(CrlInfo.rgExtension[0].pszObjId, &ci->crlnumber, &CrlInfo.rgExtension[0].Value))
 {
  kprintf(L"[s.crl ] algorithm : %S\n", CrlInfo.SignatureAlgorithm.pszObjId);
  kprintf(L"[s.crl ] validity  : ");
  kull_m_string_displayLocalFileTime(&CrlInfo.ThisUpdate);
  kprintf(L" -> ");
  kull_m_string_displayLocalFileTime(&CrlInfo.NextUpdate);
  kprintf(L"\n");

  if(getFromSigner(signer, dSigner, &hSigner, &dwSignerKeySpec, &bFreeSignerKey, &CrlInfo.rgExtension[1], &CrlInfo.Issuer))
  {
   if(dn = getCertificateName(&CrlInfo.Issuer))
   {
    kprintf(L" [i.cert] subject  : %s\n", dn);
    LocalFree(dn);
   }
   kprintf(L"[s.crl ] signature : ");
   if(status = getCertificate(hSigner, dwSignerKeySpec, X509_CERT_CRL_TO_BE_SIGNED, &CrlInfo, &CrlInfo.SignatureAlgorithm, Crl, cbCrl))
    kprintf(L"OK\n");
   closeHprov(bFreeSignerKey, dwSignerKeySpec, hSigner);
   LocalFree(CrlInfo.rgExtension[1].Value.pbData);
  }
  LocalFree(CrlInfo.rgExtension[0].Value.pbData);
 }
 else PRINT_ERROR(L"Unable to create CRL Number\n");
 return status;
}
