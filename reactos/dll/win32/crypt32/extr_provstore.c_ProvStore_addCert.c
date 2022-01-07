
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


typedef int context_t ;
struct TYPE_10__ {int * hCertStore; } ;
struct TYPE_11__ {TYPE_3__ ctx; } ;
typedef TYPE_4__ cert_t ;
struct TYPE_12__ {TYPE_6__* memStore; int hStoreProv; scalar_t__ (* provWriteCert ) (int ,int ,int ) ;} ;
typedef TYPE_5__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_13__ {TYPE_2__* vtbl; } ;
struct TYPE_8__ {scalar_t__ (* addContext ) (TYPE_6__*,int *,int *,int **,scalar_t__) ;} ;
struct TYPE_9__ {TYPE_1__ certs; } ;
typedef scalar_t__ BOOL ;


 int CERT_STORE_PROV_WRITE_ADD_FLAG ;
 int TRACE (char*,int *,int *,int *,int **) ;
 scalar_t__ TRUE ;
 int context_ptr (int *) ;
 scalar_t__ stub1 (TYPE_6__*,int *,int *,int **,scalar_t__) ;
 scalar_t__ stub2 (int ,int ,int ) ;
 scalar_t__ stub3 (TYPE_6__*,int *,int *,int **,scalar_t__) ;

__attribute__((used)) static BOOL ProvStore_addCert(WINECRYPT_CERTSTORE *store, context_t *cert,
 context_t *toReplace, context_t **ppStoreContext, BOOL use_link)
{
    WINE_PROVIDERSTORE *ps = (WINE_PROVIDERSTORE*)store;
    BOOL ret;

    TRACE("(%p, %p, %p, %p)\n", store, cert, toReplace, ppStoreContext);

    if (toReplace)
        ret = ps->memStore->vtbl->certs.addContext(ps->memStore, cert, toReplace,
         ppStoreContext, TRUE);
    else
    {
        ret = TRUE;
        if (ps->provWriteCert)
            ret = ps->provWriteCert(ps->hStoreProv, context_ptr(cert), CERT_STORE_PROV_WRITE_ADD_FLAG);
        if (ret)
            ret = ps->memStore->vtbl->certs.addContext(ps->memStore, cert, ((void*)0),
             ppStoreContext, TRUE);
    }



    if (ret && ppStoreContext)
        (*(cert_t**)ppStoreContext)->ctx.hCertStore = store;
    return ret;
}
