
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * hCertStore; } ;
struct TYPE_4__ {int base; TYPE_1__ ctx; } ;
typedef TYPE_2__ ctl_t ;
typedef int context_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int CTL_CONTEXT ;
typedef int BOOL ;


 scalar_t__ Context_CreateLinkContext (int,int *,int *) ;
 int FIXME (char*) ;

__attribute__((used)) static context_t *CTL_clone(context_t *context, WINECRYPT_CERTSTORE *store, BOOL use_link)
{
    ctl_t *ctl;

    if(!use_link) {
        FIXME("Only links supported\n");
        return ((void*)0);
    }

    ctl = (ctl_t*)Context_CreateLinkContext(sizeof(CTL_CONTEXT), context, store);
    if(!ctl)
        return ((void*)0);

    ctl->ctx.hCertStore = store;
    return &ctl->base;
}
