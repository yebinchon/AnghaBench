
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int __ms_va_list ;
typedef int WCHAR ;
struct TYPE_10__ {int cbData; } ;
struct TYPE_9__ {int pszObjId; } ;
struct TYPE_14__ {TYPE_2__ PublicKey; TYPE_1__ Algorithm; } ;
struct TYPE_13__ {TYPE_3__* pCertInfo; } ;
struct TYPE_12__ {int * pwszName; } ;
struct TYPE_11__ {TYPE_8__ SubjectPublicKeyInfo; } ;
typedef TYPE_4__* PCCRYPT_OID_INFO ;
typedef TYPE_5__* PCCERT_CONTEXT ;
typedef scalar_t__ DWORD_PTR ;
typedef int DWORD ;


 int ARRAY_SIZE (int *) ;
 int CRYPT_OID_INFO_OID_KEY ;
 scalar_t__ CertGetPublicKeyLength (int ,TYPE_8__*) ;
 TYPE_4__* CryptFindOIDInfo (int ,int ,int ) ;
 int FORMAT_MESSAGE_ARGUMENT_ARRAY ;
 int FORMAT_MESSAGE_FROM_STRING ;
 int FormatMessageW (int,int *,int ,int ,int *,int,int *) ;
 int GetProcessHeap () ;
 int * HeapAlloc (int ,int ,int) ;
 int IDS_FIELD_PUBLIC_KEY_FORMAT ;
 scalar_t__ LoadStringW (int ,int ,int *,int ) ;
 int MAX_STRING_LEN ;
 int X509_ASN_ENCODING ;
 int hInstance ;
 int lstrlenW (int *) ;

__attribute__((used)) static WCHAR *field_format_public_key(PCCERT_CONTEXT cert)
{
    PCCRYPT_OID_INFO oidInfo;
    WCHAR *buf = ((void*)0);

    oidInfo = CryptFindOIDInfo(CRYPT_OID_INFO_OID_KEY,
     cert->pCertInfo->SubjectPublicKeyInfo.Algorithm.pszObjId, 0);
    if (oidInfo)
    {
        WCHAR fmt[MAX_STRING_LEN];

        if (LoadStringW(hInstance, IDS_FIELD_PUBLIC_KEY_FORMAT, fmt, ARRAY_SIZE(fmt)))
        {
            DWORD len;
            len = lstrlenW(fmt) + lstrlenW(oidInfo->pwszName) +
                cert->pCertInfo->SubjectPublicKeyInfo.PublicKey.cbData * 8;
            buf = HeapAlloc(GetProcessHeap(), 0, len * sizeof(*buf));
            if (buf)
            {
                DWORD_PTR args[2];
                args[0] = (DWORD_PTR)oidInfo->pwszName;
                args[1] = CertGetPublicKeyLength(X509_ASN_ENCODING,
                              &cert->pCertInfo->SubjectPublicKeyInfo);
                FormatMessageW(FORMAT_MESSAGE_FROM_STRING|FORMAT_MESSAGE_ARGUMENT_ARRAY,
                               fmt, 0, 0, buf, len, (__ms_va_list*)args);
            }
        }
    }
    return buf;
}
