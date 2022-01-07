
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int properties; } ;
struct TYPE_6__ {scalar_t__ cbData; int pbData; } ;
typedef int * LPBYTE ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CRYPT_DATA_BLOB ;
typedef TYPE_2__ CDecodeMsg ;
typedef scalar_t__ BOOL ;


 scalar_t__ CDecodeHashMsg_GetParam (TYPE_2__*,int ,int ,int *,scalar_t__*) ;
 int CMSG_COMPUTED_HASH_PARAM ;
 int CMSG_HASH_DATA_PARAM ;
 int CRYPT_E_HASH_VALUE ;
 scalar_t__ ContextPropertyList_FindProperty (int ,int ,TYPE_1__*) ;
 int * CryptMemAlloc (scalar_t__) ;
 int CryptMemFree (int *) ;
 int ERROR_OUTOFMEMORY ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 scalar_t__ memcmp (int ,int *,scalar_t__) ;

__attribute__((used)) static BOOL CDecodeHashMsg_VerifyHash(CDecodeMsg *msg)
{
    BOOL ret;
    CRYPT_DATA_BLOB hashBlob;

    ret = ContextPropertyList_FindProperty(msg->properties,
     CMSG_HASH_DATA_PARAM, &hashBlob);
    if (ret)
    {
        DWORD computedHashSize = 0;

        ret = CDecodeHashMsg_GetParam(msg, CMSG_COMPUTED_HASH_PARAM, 0, ((void*)0),
         &computedHashSize);
        if (hashBlob.cbData == computedHashSize)
        {
            LPBYTE computedHash = CryptMemAlloc(computedHashSize);

            if (computedHash)
            {
                ret = CDecodeHashMsg_GetParam(msg, CMSG_COMPUTED_HASH_PARAM, 0,
                 computedHash, &computedHashSize);
                if (ret)
                {
                    if (memcmp(hashBlob.pbData, computedHash, hashBlob.cbData))
                    {
                        SetLastError(CRYPT_E_HASH_VALUE);
                        ret = FALSE;
                    }
                }
                CryptMemFree(computedHash);
            }
            else
            {
                SetLastError(ERROR_OUTOFMEMORY);
                ret = FALSE;
            }
        }
        else
        {
            SetLastError(CRYPT_E_HASH_VALUE);
            ret = FALSE;
        }
    }
    return ret;
}
