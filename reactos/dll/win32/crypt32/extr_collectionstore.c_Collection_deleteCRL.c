
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ctx; } ;
typedef TYPE_1__ crl_t ;
struct TYPE_6__ {scalar_t__ linked; } ;
typedef TYPE_2__ context_t ;
typedef int WINECRYPT_CERTSTORE ;
typedef int BOOL ;


 int CertDeleteCRLFromStore (int *) ;
 int TRACE (char*,int *,TYPE_1__*) ;

__attribute__((used)) static BOOL Collection_deleteCRL(WINECRYPT_CERTSTORE *store, context_t *context)
{
    crl_t *crl = (crl_t*)context, *linked;

    TRACE("(%p, %p)\n", store, crl);

    linked = (crl_t*)context->linked;
    return CertDeleteCRLFromStore(&linked->ctx);
}
