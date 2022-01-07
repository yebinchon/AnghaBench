
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ cbData; scalar_t__ pbData; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef int BYTE ;
typedef int BOOL ;


 scalar_t__ CryptMemAlloc (scalar_t__) ;
 scalar_t__ CryptMemRealloc (scalar_t__,scalar_t__) ;
 int FALSE ;
 int TRUE ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;

__attribute__((used)) static BOOL CDecodeMsg_CopyData(CRYPT_DATA_BLOB *blob, const BYTE *pbData,
 DWORD cbData)
{
    BOOL ret = TRUE;

    if (cbData)
    {
        if (blob->cbData)
            blob->pbData = CryptMemRealloc(blob->pbData,
             blob->cbData + cbData);
        else
            blob->pbData = CryptMemAlloc(cbData);
        if (blob->pbData)
        {
            memcpy(blob->pbData + blob->cbData, pbData, cbData);
            blob->cbData += cbData;
        }
        else
            ret = FALSE;
    }
    return ret;
}
