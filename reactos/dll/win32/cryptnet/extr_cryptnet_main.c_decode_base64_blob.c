
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cbData; int * pbData; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 int CRYPT_STRING_BASE64_ANY ;
 int * CryptMemAlloc (int) ;
 int CryptMemFree (int *) ;
 scalar_t__ CryptStringToBinaryA (char*,int,int ,int *,int*,int *,int *) ;
 scalar_t__ FALSE ;

__attribute__((used)) static BOOL decode_base64_blob( const CRYPT_DATA_BLOB *in, CRYPT_DATA_BLOB *out )
{
    BOOL ret;
    DWORD len = in->cbData;

    while (len && !in->pbData[len - 1]) len--;
    if (!CryptStringToBinaryA( (char *)in->pbData, len, CRYPT_STRING_BASE64_ANY,
                               ((void*)0), &out->cbData, ((void*)0), ((void*)0) )) return FALSE;

    if (!(out->pbData = CryptMemAlloc( out->cbData ))) return FALSE;
    ret = CryptStringToBinaryA( (char *)in->pbData, len, CRYPT_STRING_BASE64_ANY,
                                out->pbData, &out->cbData, ((void*)0), ((void*)0) );
    if (!ret) CryptMemFree( out->pbData );
    return ret;
}
