
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pbData; } ;
typedef TYPE_1__* PCRYPT_DATA_BLOB ;
typedef size_t DWORD ;


 int CryptMemFree (TYPE_1__*) ;

__attribute__((used)) static void CRYPT_FreeBlobArray(DWORD cBlobs, PCRYPT_DATA_BLOB blobs)
{
    DWORD i;

    for (i = 0; i < cBlobs; i++)
        CryptMemFree(blobs[i].pbData);
    CryptMemFree(blobs);
}
