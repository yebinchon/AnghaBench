
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cbData; int* pbData; } ;
typedef int DWORD ;
typedef TYPE_1__ CRYPT_DER_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 int CRYPT_DECODE_ALLOC_FLAG ;
 int CRYPT_DECODE_NOCOPY_FLAG ;
 int CRYPT_DecodeCheckSpace (int*,int) ;
 int CRYPT_E_ASN1_CORRUPT ;
 int CRYPT_GetLen (int const*,int,int*) ;
 int FALSE ;
 int GET_LEN_BYTES (int const) ;
 int SetLastError (int ) ;
 int assert (int*) ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static BOOL CRYPT_AsnDecodeDerBlob(const BYTE *pbEncoded, DWORD cbEncoded,
 DWORD dwFlags, void *pvStructInfo, DWORD *pcbStructInfo, DWORD *pcbDecoded)
{
    BOOL ret;
    DWORD dataLen;

    if ((ret = CRYPT_GetLen(pbEncoded, cbEncoded, &dataLen)))
    {
        BYTE lenBytes = GET_LEN_BYTES(pbEncoded[1]);
        DWORD bytesNeeded = sizeof(CRYPT_DER_BLOB);

        if (!(dwFlags & CRYPT_DECODE_NOCOPY_FLAG))
            bytesNeeded += 1 + lenBytes + dataLen;

        if (pcbDecoded)
            *pcbDecoded = 1 + lenBytes + dataLen;
        if (!pvStructInfo)
            *pcbStructInfo = bytesNeeded;
        else if ((ret = CRYPT_DecodeCheckSpace(pcbStructInfo, bytesNeeded)))
        {
            CRYPT_DER_BLOB *blob;

            if (dwFlags & CRYPT_DECODE_ALLOC_FLAG)
                pvStructInfo = *(BYTE **)pvStructInfo;
            blob = pvStructInfo;
            blob->cbData = 1 + lenBytes + dataLen;
            if (blob->cbData)
            {
                if (dwFlags & CRYPT_DECODE_NOCOPY_FLAG)
                    blob->pbData = (BYTE *)pbEncoded;
                else
                {
                    assert(blob->pbData);
                    memcpy(blob->pbData, pbEncoded, blob->cbData);
                }
            }
            else
            {
                SetLastError(CRYPT_E_ASN1_CORRUPT);
                ret = FALSE;
            }
        }
    }
    return ret;
}
