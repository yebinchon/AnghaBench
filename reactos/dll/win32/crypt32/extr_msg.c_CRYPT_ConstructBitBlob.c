
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * pbData; scalar_t__ cbData; int cUnusedBits; } ;
typedef TYPE_1__ CRYPT_BIT_BLOB ;
typedef int BOOL ;


 int * CryptMemAlloc (scalar_t__) ;
 int FALSE ;
 int TRUE ;
 int memcpy (int *,int *,scalar_t__) ;

__attribute__((used)) static BOOL CRYPT_ConstructBitBlob(CRYPT_BIT_BLOB *out, const CRYPT_BIT_BLOB *in)
{
    out->cbData = in->cbData;
    out->cUnusedBits = in->cUnusedBits;
    if (out->cbData)
    {
        out->pbData = CryptMemAlloc(out->cbData);
        if (out->pbData)
            memcpy(out->pbData, in->pbData, out->cbData);
        else
            return FALSE;
    }
    else
        out->pbData = ((void*)0);
    return TRUE;
}
