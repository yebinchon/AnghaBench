
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pCtlInfo; int pbCtlContext; int pbCtlEncoded; int hCryptMsg; } ;
struct TYPE_4__ {TYPE_1__ ctx; } ;
typedef TYPE_2__ ctl_t ;
typedef int context_t ;


 int CryptMemFree (int ) ;
 int CryptMsgClose (int ) ;
 int LocalFree (int ) ;

__attribute__((used)) static void CTL_free(context_t *context)
{
    ctl_t *ctl = (ctl_t*)context;

    CryptMsgClose(ctl->ctx.hCryptMsg);
    CryptMemFree(ctl->ctx.pbCtlEncoded);
    CryptMemFree(ctl->ctx.pbCtlContext);
    LocalFree(ctl->ctx.pCtlInfo);
}
