
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
typedef TYPE_1__ ctl_t ;
struct TYPE_6__ {scalar_t__ linked; } ;
typedef TYPE_2__ context_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int BOOL ;


 int CertDeleteCTLFromStore (int *) ;
 int TRACE (char*,int *,TYPE_1__*) ;

__attribute__((used)) static BOOL Collection_deleteCTL(WINECRYPT_CERTSTORE *store, context_t *context)
{
    ctl_t *ctl = (ctl_t*)context, *linked;

    TRACE("(%p, %p)\n", store, ctl);

    linked = (ctl_t*)context->linked;
    return CertDeleteCTLFromStore(&linked->ctx);
}
