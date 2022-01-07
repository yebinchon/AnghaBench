
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_4__ {int cbData; int pbData; } ;
struct TYPE_5__ {TYPE_1__ Value; int pszObjId; } ;
typedef int DWORD ;
typedef TYPE_2__ CERT_EXTENSION ;


 scalar_t__ CryptFormatObject (int ,int ,int ,int *,int ,int ,int ,int *,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int ) ;
 int X509_ASN_ENCODING ;

__attribute__((used)) static WCHAR *crypt_format_extension(const CERT_EXTENSION *ext, DWORD formatStrType)
{
    WCHAR *str = ((void*)0);
    DWORD size;

    if (CryptFormatObject(X509_ASN_ENCODING, 0, formatStrType, ((void*)0),
     ext->pszObjId, ext->Value.pbData, ext->Value.cbData, ((void*)0), &size))
    {
        str = HeapAlloc(GetProcessHeap(), 0, size);
        CryptFormatObject(X509_ASN_ENCODING, 0, formatStrType, ((void*)0),
         ext->pszObjId, ext->Value.pbData, ext->Value.cbData, str, &size);
    }
    return str;
}
