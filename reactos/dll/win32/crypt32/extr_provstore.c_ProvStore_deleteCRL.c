
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int context_t ;
struct TYPE_7__ {TYPE_4__* memStore; int hStoreProv; scalar_t__ (* provDeleteCrl ) (int ,int ,int ) ;} ;
typedef TYPE_3__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {scalar_t__ (* delete ) (TYPE_4__*,int *) ;} ;
struct TYPE_5__ {TYPE_2__ crls; } ;
typedef scalar_t__ BOOL ;


 int TRACE (char*,int *,int *) ;
 scalar_t__ TRUE ;
 int context_ptr (int *) ;
 scalar_t__ stub1 (int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_4__*,int *) ;

__attribute__((used)) static BOOL ProvStore_deleteCRL(WINECRYPT_CERTSTORE *store, context_t *crl)
{
    WINE_PROVIDERSTORE *ps = (WINE_PROVIDERSTORE*)store;
    BOOL ret = TRUE;

    TRACE("(%p, %p)\n", store, crl);

    if (ps->provDeleteCrl)
        ret = ps->provDeleteCrl(ps->hStoreProv, context_ptr(crl), 0);
    if (ret)
        ret = ps->memStore->vtbl->crls.delete(ps->memStore, crl);
    return ret;
}
