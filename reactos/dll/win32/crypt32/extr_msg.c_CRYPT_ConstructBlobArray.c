
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * PCRYPT_DATA_BLOB ;
typedef int DWORD ;
typedef int CRYPT_DATA_BLOB ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_ConstructBlob (int *,int const*) ;
 int * CryptMemAlloc (int) ;
 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int memset (int *,int ,int) ;

__attribute__((used)) static BOOL CRYPT_ConstructBlobArray(DWORD *outCBlobs,
 PCRYPT_DATA_BLOB *outPBlobs, DWORD cBlobs, const CRYPT_DATA_BLOB *pBlobs)
{
    BOOL ret = TRUE;

    *outCBlobs = cBlobs;
    if (cBlobs)
    {
        *outPBlobs = CryptMemAlloc(cBlobs * sizeof(CRYPT_DATA_BLOB));
        if (*outPBlobs)
        {
            DWORD i;

            memset(*outPBlobs, 0, cBlobs * sizeof(CRYPT_DATA_BLOB));
            for (i = 0; ret && i < cBlobs; i++)
                ret = CRYPT_ConstructBlob(&(*outPBlobs)[i], &pBlobs[i]);
        }
        else
            ret = FALSE;
    }
    return ret;
}
