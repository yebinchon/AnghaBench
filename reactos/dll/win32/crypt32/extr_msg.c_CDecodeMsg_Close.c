
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_18__ {int info; } ;
struct TYPE_16__ {int pbData; } ;
struct TYPE_15__ {int pbData; } ;
struct TYPE_12__ {int pbData; } ;
struct TYPE_13__ {TYPE_2__ content; int data; scalar_t__ crypt_prov; } ;
struct TYPE_14__ {TYPE_9__ signed_data; TYPE_3__ enveloped_data; int hash; } ;
struct TYPE_11__ {int open_flags; } ;
struct TYPE_17__ {int type; int properties; TYPE_6__ detached_data; TYPE_5__ msg_data; TYPE_4__ u; scalar_t__ crypt_prov; TYPE_1__ base; } ;
typedef TYPE_7__* HCRYPTMSG ;
typedef TYPE_7__ CDecodeMsg ;


 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;



 int CSignedMsgData_CloseHandles (TYPE_9__*) ;
 int ContextPropertyList_Free (int ) ;
 int CryptDestroyHash (int ) ;
 int CryptMemFree (int ) ;
 int CryptReleaseContext (scalar_t__,int ) ;
 int LocalFree (int ) ;

__attribute__((used)) static void CDecodeMsg_Close(HCRYPTMSG hCryptMsg)
{
    CDecodeMsg *msg = hCryptMsg;

    if (msg->crypt_prov && msg->base.open_flags & CMSG_CRYPT_RELEASE_CONTEXT_FLAG)
        CryptReleaseContext(msg->crypt_prov, 0);
    switch (msg->type)
    {
    case 129:
        if (msg->u.hash)
            CryptDestroyHash(msg->u.hash);
        break;
    case 130:
        if (msg->u.enveloped_data.crypt_prov)
            CryptReleaseContext(msg->u.enveloped_data.crypt_prov, 0);
        LocalFree(msg->u.enveloped_data.data);
        CryptMemFree(msg->u.enveloped_data.content.pbData);
        break;
    case 128:
        if (msg->u.signed_data.info)
        {
            LocalFree(msg->u.signed_data.info);
            CSignedMsgData_CloseHandles(&msg->u.signed_data);
        }
        break;
    }
    CryptMemFree(msg->msg_data.pbData);
    CryptMemFree(msg->detached_data.pbData);
    ContextPropertyList_Free(msg->properties);
}
