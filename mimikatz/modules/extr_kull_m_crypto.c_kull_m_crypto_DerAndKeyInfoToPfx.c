
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ PCRYPT_KEY_PROV_INFO ;
typedef int PCCERT_CONTEXT ;
typedef int LPCWSTR ;
typedef scalar_t__ LPCVOID ;
typedef int LPCBYTE ;
typedef int HCERTSTORE ;
typedef int DWORD ;
typedef int BOOL ;


 int CERT_CLOSE_STORE_FORCE_FLAG ;
 int CERT_KEY_PROV_INFO_PROP_ID ;
 int CERT_STORE_ADD_NEW ;
 int CERT_STORE_CREATE_NEW_FLAG ;
 int CERT_STORE_PROV_MEMORY ;
 scalar_t__ CertAddEncodedCertificateToStore (int ,int ,int ,int ,int ,int *) ;
 int CertCloseStore (int ,int ) ;
 int CertFreeCertificateContext (int ) ;
 int CertOpenStore (int ,int ,int ,int ,int *) ;
 scalar_t__ CertSetCertificateContextProperty (int ,int ,int ,scalar_t__) ;
 int FALSE ;
 int PRINT_ERROR_AUTO (char*) ;
 int X509_ASN_ENCODING ;
 int kull_m_crypto_exportPfx (int ,int ) ;

BOOL kull_m_crypto_DerAndKeyInfoToPfx(LPCVOID der, DWORD derLen, PCRYPT_KEY_PROV_INFO pInfo, LPCWSTR filename)
{
 BOOL isExported = FALSE;
 HCERTSTORE hTempStore;
 PCCERT_CONTEXT pCertContext;
 if(hTempStore = CertOpenStore(CERT_STORE_PROV_MEMORY, 0, 0, CERT_STORE_CREATE_NEW_FLAG, ((void*)0)))
 {
  if(CertAddEncodedCertificateToStore(hTempStore, X509_ASN_ENCODING, (LPCBYTE) der, derLen, CERT_STORE_ADD_NEW, &pCertContext))
  {
   if(CertSetCertificateContextProperty(pCertContext, CERT_KEY_PROV_INFO_PROP_ID, 0, (LPCVOID) pInfo))
    isExported = kull_m_crypto_exportPfx(hTempStore, filename);
   else PRINT_ERROR_AUTO(L"CertSetCertificateContextProperty(CERT_KEY_PROV_INFO_PROP_ID)");
   CertFreeCertificateContext(pCertContext);
  }
  else PRINT_ERROR_AUTO(L"CertAddEncodedCertificateToStore");
  CertCloseStore(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
 }
 return isExported;
}
