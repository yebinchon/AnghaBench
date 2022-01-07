
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int content; TYPE_3__* data; } ;
struct TYPE_12__ {TYPE_4__ enveloped_data; } ;
struct TYPE_8__ {int open_flags; } ;
struct TYPE_13__ {TYPE_5__ u; int detached_data; TYPE_1__ base; } ;
struct TYPE_9__ {int encryptedContent; } ;
struct TYPE_10__ {TYPE_2__ encryptedContentInfo; } ;
typedef int CRYPT_DER_BLOB ;
typedef int CRYPT_DATA_BLOB ;
typedef TYPE_6__ CDecodeMsg ;
typedef int BOOL ;


 int CMSG_DETACHED_FLAG ;
 int CRYPT_ConstructBlob (int *,int *) ;

__attribute__((used)) static BOOL CDecodeMsg_FinalizeEnvelopedContent(CDecodeMsg *msg,
 CRYPT_DER_BLOB *blob)
{
    CRYPT_DATA_BLOB *content;

    if (msg->base.open_flags & CMSG_DETACHED_FLAG)
        content = &msg->detached_data;
    else
        content =
         &msg->u.enveloped_data.data->encryptedContentInfo.encryptedContent;

    return CRYPT_ConstructBlob(&msg->u.enveloped_data.content, content);
}
