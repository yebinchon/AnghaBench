
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int PCERT_NAME_BLOB ;
typedef int DWORD ;


 int CERT_NAME_STR_CRLF_FLAG ;
 int CERT_X500_NAME_STR ;
 int CertNameToStrW (int ,int ,int,int *,int) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int X509_ASN_ENCODING ;

__attribute__((used)) static WCHAR *field_format_detailed_cert_name(PCERT_NAME_BLOB name)
{
    WCHAR *str = ((void*)0);
    DWORD len = CertNameToStrW(X509_ASN_ENCODING, name,
     CERT_X500_NAME_STR | CERT_NAME_STR_CRLF_FLAG, ((void*)0), 0);

    if (len)
    {
        str = HeapAlloc(GetProcessHeap(), 0, len * sizeof(WCHAR));
        if (str)
            CertNameToStrW(X509_ASN_ENCODING, name,
             CERT_X500_NAME_STR | CERT_NAME_STR_CRLF_FLAG, str, len);
    }
    return str;
}
