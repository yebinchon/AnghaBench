
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
typedef scalar_t__ BOOL ;


 int CERT_CLOSE_STORE_FORCE_FLAG ;
 int CERT_KEY_PROV_INFO_PROP_ID ;
 int CERT_STORE_ADD_ALWAYS ;
 int CERT_STORE_ADD_NEW ;
 int CERT_STORE_OPEN_EXISTING_FLAG ;
 int CERT_STORE_PROV_SYSTEM ;
 scalar_t__ CertAddEncodedCertificateToStore (int ,int ,int ,int,int ,int *) ;
 int CertCloseStore (int ,int ) ;
 int CertFreeCertificateContext (int ) ;
 int CertOpenStore (int ,int ,int ,int,int ) ;
 scalar_t__ CertSetCertificateContextProperty (int ,int ,int ,scalar_t__) ;
 scalar_t__ FALSE ;
 int PRINT_ERROR_AUTO (char*) ;
 int X509_ASN_ENCODING ;

BOOL kull_m_crypto_DerAndKeyInfoToStore(LPCVOID der, DWORD derLen, PCRYPT_KEY_PROV_INFO pInfo, DWORD systemStore, LPCWSTR store, BOOL force)
{
 BOOL status = FALSE;
 HCERTSTORE hTempStore;
 PCCERT_CONTEXT pCertContext;
 if(hTempStore = CertOpenStore(CERT_STORE_PROV_SYSTEM, 0, 0, CERT_STORE_OPEN_EXISTING_FLAG | systemStore, store))
 {
  if(CertAddEncodedCertificateToStore(hTempStore, X509_ASN_ENCODING, (LPCBYTE) der, derLen, force ? CERT_STORE_ADD_ALWAYS : CERT_STORE_ADD_NEW, &pCertContext))
  {
   if(!(status = CertSetCertificateContextProperty(pCertContext, CERT_KEY_PROV_INFO_PROP_ID, 0, (LPCVOID) pInfo)))
    PRINT_ERROR_AUTO(L"CertSetCertificateContextProperty(CERT_KEY_PROV_INFO_PROP_ID)");
   CertFreeCertificateContext(pCertContext);
  }
  else PRINT_ERROR_AUTO(L"CertAddEncodedCertificateToStore");
  CertCloseStore(hTempStore, CERT_CLOSE_STORE_FORCE_FLAG);
 }
 return status;
}
