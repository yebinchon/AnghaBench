
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int * PWSTR ;
typedef int PCERT_NAME_BLOB ;
typedef int DWORD ;


 int CERT_X500_NAME_STR ;
 int CertNameToStr (int ,int ,int ,int *,int) ;
 int LPTR ;
 scalar_t__ LocalAlloc (int ,int) ;
 scalar_t__ LocalFree (int *) ;
 int X509_ASN_ENCODING ;

PWSTR getCertificateName(PCERT_NAME_BLOB blob)
{
 PWSTR ret = ((void*)0);
 DWORD dwSizeNeeded = CertNameToStr(X509_ASN_ENCODING, blob, CERT_X500_NAME_STR, ((void*)0), 0);
 if(dwSizeNeeded)
 {
  if(ret = (PWSTR) LocalAlloc(LPTR, dwSizeNeeded * sizeof(wchar_t)))
  {
   if(!CertNameToStr(X509_ASN_ENCODING, blob, CERT_X500_NAME_STR, ret, dwSizeNeeded))
    ret = (PWSTR) LocalFree(ret);
  }
 }
 return ret;
}
