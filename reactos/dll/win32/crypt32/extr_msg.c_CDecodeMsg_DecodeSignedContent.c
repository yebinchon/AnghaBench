
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * info; } ;
struct TYPE_8__ {TYPE_1__ signed_data; } ;
struct TYPE_10__ {TYPE_2__ u; } ;
struct TYPE_9__ {int cbData; int pbData; } ;
typedef int DWORD ;
typedef int CRYPT_SIGNED_INFO ;
typedef TYPE_3__ CRYPT_DER_BLOB ;
typedef TYPE_4__ CDecodeMsg ;
typedef scalar_t__ BOOL ;


 scalar_t__ CRYPT_AsnDecodeCMSSignedInfo (int ,int ,int ,int *,int *,int *) ;
 int CRYPT_DECODE_ALLOC_FLAG ;

__attribute__((used)) static BOOL CDecodeMsg_DecodeSignedContent(CDecodeMsg *msg,
 const CRYPT_DER_BLOB *blob)
{
    BOOL ret;
    CRYPT_SIGNED_INFO *signedInfo;
    DWORD size;

    ret = CRYPT_AsnDecodeCMSSignedInfo(blob->pbData, blob->cbData,
     CRYPT_DECODE_ALLOC_FLAG, ((void*)0), (CRYPT_SIGNED_INFO *)&signedInfo,
     &size);
    if (ret)
        msg->u.signed_data.info = signedInfo;
    return ret;
}
