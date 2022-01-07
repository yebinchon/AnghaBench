
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int Value; int dwValueType; } ;
struct TYPE_6__ {int cbData; int pbData; } ;
typedef int * LPWSTR ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_OBJID_BLOB ;
typedef TYPE_2__ CERT_NAME_VALUE ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CertRDNValueToStrW (int ,int *,int *,int) ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,TYPE_2__**,int*) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int LocalFree (TYPE_2__*) ;
 int X509_ASN_ENCODING ;
 int X509_NAME_VALUE ;

__attribute__((used)) static WCHAR *get_cps_str_from_qualifier(const CRYPT_OBJID_BLOB *qualifier)
{
    LPWSTR qualifierStr = ((void*)0);
    CERT_NAME_VALUE *qualifierValue;
    DWORD size;

    if (CryptDecodeObjectEx(X509_ASN_ENCODING, X509_NAME_VALUE,
     qualifier->pbData, qualifier->cbData, CRYPT_DECODE_ALLOC_FLAG, ((void*)0),
     &qualifierValue, &size))
    {
        size = CertRDNValueToStrW(qualifierValue->dwValueType,
         &qualifierValue->Value, ((void*)0), 0);
        qualifierStr = HeapAlloc(GetProcessHeap(), 0, size * sizeof(WCHAR));
        if (qualifierStr)
            CertRDNValueToStrW(qualifierValue->dwValueType,
             &qualifierValue->Value, qualifierStr, size);
        LocalFree(qualifierValue);
    }
    return qualifierStr;
}
