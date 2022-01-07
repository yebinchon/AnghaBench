
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PCRYPT_ALGORITHM_IDENTIFIER ;
typedef int * PBYTE ;
typedef int LPCSTR ;
typedef int HCRYPTPROV_OR_NCRYPT_KEY_HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ CryptSignAndEncodeCertificate (int ,int ,int,int ,void const*,int ,int *,int *,int *) ;
 scalar_t__ FALSE ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int ) ;
 scalar_t__ LocalFree (int *) ;
 int PKCS_7_ASN_ENCODING ;
 int PRINT_ERROR_AUTO (char*) ;
 int X509_ASN_ENCODING ;

BOOL getCertificate(HCRYPTPROV_OR_NCRYPT_KEY_HANDLE hProv, DWORD dwKeySpec, LPCSTR type, const void *pvStructInfo, PCRYPT_ALGORITHM_IDENTIFIER pSignatureAlgorithm, PBYTE *Certificate, DWORD *cbCertificate)
{
 BOOL status = FALSE;
 if(CryptSignAndEncodeCertificate(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, type, pvStructInfo, pSignatureAlgorithm, ((void*)0), ((void*)0), cbCertificate))
 {
  if(*Certificate = (PBYTE) LocalAlloc(LPTR, *cbCertificate))
  {
   if(!(status = CryptSignAndEncodeCertificate(hProv, dwKeySpec, X509_ASN_ENCODING | PKCS_7_ASN_ENCODING, type, pvStructInfo, pSignatureAlgorithm, ((void*)0), *Certificate, cbCertificate)))
   {
    PRINT_ERROR_AUTO(L"CryptSignAndEncodeCertificate (data)");
    *Certificate = (PBYTE) LocalFree(*Certificate);
   }
  }
 }
 else PRINT_ERROR_AUTO(L"CryptSignAndEncodeCertificate (init)");
 return status;
}
