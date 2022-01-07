
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int * hCertStore; } ;
struct TYPE_10__ {int base; TYPE_3__ ctx; } ;
typedef TYPE_4__ crl_t ;
typedef int context_t ;
struct TYPE_11__ {TYPE_6__* memStore; } ;
typedef TYPE_5__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_12__ {TYPE_2__* vtbl; } ;
struct TYPE_7__ {scalar_t__ (* enumContext ) (TYPE_6__*,int *) ;} ;
struct TYPE_8__ {TYPE_1__ crls; } ;


 scalar_t__ stub1 (TYPE_6__*,int *) ;

__attribute__((used)) static context_t *ProvStore_enumCRL(WINECRYPT_CERTSTORE *store, context_t *prev)
{
    WINE_PROVIDERSTORE *ps = (WINE_PROVIDERSTORE*)store;
    crl_t *ret;

    ret = (crl_t*)ps->memStore->vtbl->crls.enumContext(ps->memStore, prev);
    if (!ret)
        return ((void*)0);




    ret->ctx.hCertStore = store;
    return &ret->base;
}
