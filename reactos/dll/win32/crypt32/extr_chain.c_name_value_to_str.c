
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPWSTR ;
typedef int DWORD ;
typedef int CERT_NAME_BLOB ;


 int CERT_SIMPLE_NAME_STR ;
 int * CryptMemAlloc (int) ;
 int X509_ASN_ENCODING ;
 int cert_name_to_str_with_indent (int ,int ,int const*,int ,int *,int) ;

__attribute__((used)) static LPWSTR name_value_to_str(const CERT_NAME_BLOB *name)
{
    DWORD len = cert_name_to_str_with_indent(X509_ASN_ENCODING, 0, name,
     CERT_SIMPLE_NAME_STR, ((void*)0), 0);
    LPWSTR str = ((void*)0);

    if (len)
    {
        str = CryptMemAlloc(len * sizeof(WCHAR));
        if (str)
            cert_name_to_str_with_indent(X509_ASN_ENCODING, 0, name,
             CERT_SIMPLE_NAME_STR, str, len);
    }
    return str;
}
