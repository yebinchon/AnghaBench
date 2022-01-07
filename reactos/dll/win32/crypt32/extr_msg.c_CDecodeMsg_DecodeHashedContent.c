
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_15__ {int open_flags; } ;
struct TYPE_20__ {int properties; TYPE_1__ base; } ;
struct TYPE_19__ {int cbData; int pbData; } ;
struct TYPE_17__ {int cbData; int const* pbData; } ;
struct TYPE_14__ {scalar_t__ cbData; } ;
struct TYPE_16__ {TYPE_13__ Content; scalar_t__ pszObjId; } ;
struct TYPE_18__ {TYPE_3__ hash; TYPE_2__ ContentInfo; int DigestAlgorithm; int version; } ;
typedef int DWORD ;
typedef TYPE_4__ CRYPT_DIGESTED_DATA ;
typedef TYPE_5__ CRYPT_DER_BLOB ;
typedef TYPE_6__ CDecodeMsg ;
typedef int BYTE ;
typedef scalar_t__ BOOL ;


 int CDecodeMsg_DecodeDataContent (TYPE_6__*,TYPE_13__*) ;
 int CDecodeMsg_SaveAlgorithmID (TYPE_6__*,int ,int *) ;
 int CMSG_CONTENT_PARAM ;
 int CMSG_DETACHED_FLAG ;
 int CMSG_HASH_ALGORITHM_PARAM ;
 int CMSG_HASH_DATA_PARAM ;
 int CMSG_INNER_CONTENT_TYPE_PARAM ;
 int CMSG_VERSION_PARAM ;
 scalar_t__ CRYPT_AsnDecodePKCSDigestedData (int ,int ,int ,int *,TYPE_4__*,int *) ;
 int CRYPT_DECODE_ALLOC_FLAG ;
 int ContextPropertyList_SetProperty (int ,int ,int const*,int) ;
 int LocalFree (TYPE_4__*) ;
 int strlen (scalar_t__) ;

__attribute__((used)) static BOOL CDecodeMsg_DecodeHashedContent(CDecodeMsg *msg,
 const CRYPT_DER_BLOB *blob)
{
    BOOL ret;
    CRYPT_DIGESTED_DATA *digestedData;
    DWORD size;

    ret = CRYPT_AsnDecodePKCSDigestedData(blob->pbData, blob->cbData,
     CRYPT_DECODE_ALLOC_FLAG, ((void*)0), (CRYPT_DIGESTED_DATA *)&digestedData,
     &size);
    if (ret)
    {
        ContextPropertyList_SetProperty(msg->properties, CMSG_VERSION_PARAM,
         (const BYTE *)&digestedData->version, sizeof(digestedData->version));
        CDecodeMsg_SaveAlgorithmID(msg, CMSG_HASH_ALGORITHM_PARAM,
         &digestedData->DigestAlgorithm);
        ContextPropertyList_SetProperty(msg->properties,
         CMSG_INNER_CONTENT_TYPE_PARAM,
         (const BYTE *)digestedData->ContentInfo.pszObjId,
         digestedData->ContentInfo.pszObjId ?
         strlen(digestedData->ContentInfo.pszObjId) + 1 : 0);
        if (!(msg->base.open_flags & CMSG_DETACHED_FLAG))
        {
            if (digestedData->ContentInfo.Content.cbData)
                CDecodeMsg_DecodeDataContent(msg,
                 &digestedData->ContentInfo.Content);
            else
                ContextPropertyList_SetProperty(msg->properties,
                 CMSG_CONTENT_PARAM, ((void*)0), 0);
        }
        ContextPropertyList_SetProperty(msg->properties, CMSG_HASH_DATA_PARAM,
         digestedData->hash.pbData, digestedData->hash.cbData);
        LocalFree(digestedData);
    }
    return ret;
}
