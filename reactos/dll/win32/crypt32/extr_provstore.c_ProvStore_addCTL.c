
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int * hCertStore; } ;
struct TYPE_13__ {TYPE_4__ ctx; } ;
typedef TYPE_5__ ctl_t ;
typedef int context_t ;
struct TYPE_9__ {int dwOpenFlags; } ;
struct TYPE_14__ {TYPE_7__* memStore; int hStoreProv; scalar_t__ (* provWriteCtl ) (int ,int ,int ) ;TYPE_1__ hdr; } ;
typedef TYPE_6__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_15__ {TYPE_3__* vtbl; } ;
struct TYPE_10__ {scalar_t__ (* addContext ) (TYPE_7__*,int *,int *,int **,scalar_t__) ;} ;
struct TYPE_11__ {TYPE_2__ ctls; } ;
typedef scalar_t__ BOOL ;


 int CERT_STORE_PROV_WRITE_ADD_FLAG ;
 int CERT_STORE_READONLY_FLAG ;
 int ERROR_ACCESS_DENIED ;
 scalar_t__ FALSE ;
 int SetLastError (int ) ;
 int TRACE (char*,int *,int *,int *,int **) ;
 scalar_t__ TRUE ;
 int context_ptr (int *) ;
 scalar_t__ stub1 (TYPE_7__*,int *,int *,int **,scalar_t__) ;
 scalar_t__ stub2 (int ,int ,int ) ;
 scalar_t__ stub3 (TYPE_7__*,int *,int *,int **,scalar_t__) ;

__attribute__((used)) static BOOL ProvStore_addCTL(WINECRYPT_CERTSTORE *store, context_t *ctl,
 context_t *toReplace, context_t **ppStoreContext, BOOL use_link)
{
    WINE_PROVIDERSTORE *ps = (WINE_PROVIDERSTORE*)store;
    BOOL ret;

    TRACE("(%p, %p, %p, %p)\n", store, ctl, toReplace, ppStoreContext);

    if (toReplace)
        ret = ps->memStore->vtbl->ctls.addContext(ps->memStore, ctl, toReplace,
         ppStoreContext, TRUE);
    else
    {
        if (ps->hdr.dwOpenFlags & CERT_STORE_READONLY_FLAG)
        {
            SetLastError(ERROR_ACCESS_DENIED);
            ret = FALSE;
        }
        else
        {
            ret = TRUE;
            if (ps->provWriteCtl)
                ret = ps->provWriteCtl(ps->hStoreProv, context_ptr(ctl),
                 CERT_STORE_PROV_WRITE_ADD_FLAG);
            if (ret)
                ret = ps->memStore->vtbl->ctls.addContext(ps->memStore, ctl, ((void*)0),
                 ppStoreContext, TRUE);
        }
    }



    if (ret && ppStoreContext)
        (*(ctl_t**)ppStoreContext)->ctx.hCertStore = store;
    return ret;
}
