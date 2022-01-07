
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbData; int * pbData; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_BIT_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_AsnDecodeBitsInternal (int const*,int,int,void*,int*,int*) ;
 int CRYPT_DECODE_NOCOPY_FLAG ;
 int GetLastError () ;
 int TRACE (char*,int ,int,...) ;

__attribute__((used)) static BOOL CRYPT_AsnDecodeBitsSwapBytes(const BYTE *pbEncoded,
 DWORD cbEncoded, DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo,
 DWORD *pcbDecoded)
{
    BOOL ret;

    TRACE("(%p, %d, 0x%08x, %p, %d, %p)\n", pbEncoded, cbEncoded, dwFlags,
     pvStructInfo, *pcbStructInfo, pcbDecoded);




    ret = CRYPT_AsnDecodeBitsInternal(pbEncoded, cbEncoded,
     dwFlags & ~CRYPT_DECODE_NOCOPY_FLAG, pvStructInfo, pcbStructInfo,
     pcbDecoded);
    if (ret && pvStructInfo)
    {
        CRYPT_BIT_BLOB *blob = pvStructInfo;

        if (blob->cbData)
        {
            DWORD i;
            BYTE temp;

            for (i = 0; i < blob->cbData / 2; i++)
            {
                temp = blob->pbData[i];
                blob->pbData[i] = blob->pbData[blob->cbData - i - 1];
                blob->pbData[blob->cbData - i - 1] = temp;
            }
        }
    }
    TRACE("returning %d (%08x)\n", ret, GetLastError());
    return ret;
}
