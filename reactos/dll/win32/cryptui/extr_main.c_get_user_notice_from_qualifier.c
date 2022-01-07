
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_7__ {int pszDisplayText; } ;
struct TYPE_6__ {int cbData; int pbData; } ;
typedef int * LPWSTR ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_OBJID_BLOB ;
typedef TYPE_2__ CERT_POLICY_QUALIFIER_USER_NOTICE ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 scalar_t__ CryptDecodeObjectEx (int ,int ,int ,int ,int ,int *,TYPE_2__**,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int LocalFree (TYPE_2__*) ;
 int X509_ASN_ENCODING ;
 int X509_PKIX_POLICY_QUALIFIER_USERNOTICE ;
 int lstrcpyW (int *,int ) ;
 int lstrlenW (int ) ;

__attribute__((used)) static WCHAR *get_user_notice_from_qualifier(const CRYPT_OBJID_BLOB *qualifier)
{
    LPWSTR str = ((void*)0);
    CERT_POLICY_QUALIFIER_USER_NOTICE *qualifierValue;
    DWORD size;

    if (CryptDecodeObjectEx(X509_ASN_ENCODING,
     X509_PKIX_POLICY_QUALIFIER_USERNOTICE,
     qualifier->pbData, qualifier->cbData, CRYPT_DECODE_ALLOC_FLAG, ((void*)0),
     &qualifierValue, &size))
    {
        str = HeapAlloc(GetProcessHeap(), 0,
         (lstrlenW(qualifierValue->pszDisplayText) + 1) * sizeof(WCHAR));
        if (str)
            lstrcpyW(str, qualifierValue->pszDisplayText);
        LocalFree(qualifierValue);
    }
    return str;
}
