
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCERT_PUBLIC_KEY_INFO ;
typedef int HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef int DWORD ;


 scalar_t__ CryptExportPublicKeyInfo (int ,int ,int,int *,int *) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 scalar_t__ LocalFree (int *) ;
 int PKCS_7_ASN_ENCODING ;
 int PRINT_ERROR_AUTO (char*) ;
 int X509_ASN_ENCODING ;

PCERT_PUBLIC_KEY_INFO getPublicKeyInfo(HCRYPTPROV_OR_NCRYPT_KEY_HANDLE hProv, DWORD dwKeySpec)
{
 PCERT_PUBLIC_KEY_INFO info = ((void*)0);
 DWORD cbInfo;
 if(CryptExportPublicKeyInfo(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, ((void*)0), &cbInfo))
 {
  if(info = (PCERT_PUBLIC_KEY_INFO) LocalAlloc(LPTR, cbInfo))
  {
   if(!CryptExportPublicKeyInfo(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, info, &cbInfo))
   {
    PRINT_ERROR_AUTO(L"CryptExportPublicKeyInfo (data)");
    info = (PCERT_PUBLIC_KEY_INFO) LocalFree(info);
   }
  }
 }
 else PRINT_ERROR_AUTO(L"CryptExportPublicKeyInfo (init)");
 return info;
}
