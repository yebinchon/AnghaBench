
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int open_flags; } ;
struct TYPE_6__ {int pbData; } ;
struct TYPE_8__ {int prov; TYPE_2__ base; int hash; TYPE_1__ data; } ;
typedef TYPE_3__* HCRYPTMSG ;
typedef TYPE_3__ CHashEncodeMsg ;


 int CMSG_CRYPT_RELEASE_CONTEXT_FLAG ;
 int CryptDestroyHash (int ) ;
 int CryptMemFree (int ) ;
 int CryptReleaseContext (int ,int ) ;

__attribute__((used)) static void CHashEncodeMsg_Close(HCRYPTMSG hCryptMsg)
{
    CHashEncodeMsg *msg = hCryptMsg;

    CryptMemFree(msg->data.pbData);
    CryptDestroyHash(msg->hash);
    if (msg->base.open_flags & CMSG_CRYPT_RELEASE_CONTEXT_FLAG)
        CryptReleaseContext(msg->prov, 0);
}
