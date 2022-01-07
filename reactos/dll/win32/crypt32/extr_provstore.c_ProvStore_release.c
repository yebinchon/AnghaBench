
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int ref; } ;
struct TYPE_7__ {int dwStoreProvFlags; TYPE_5__ hdr; TYPE_3__* memStore; int hStoreProv; int (* provCloseStore ) (int ,int ) ;} ;
typedef TYPE_2__ WINE_PROVIDERSTORE ;
typedef int WINECRYPT_CERTSTORE ;
struct TYPE_8__ {TYPE_1__* vtbl; } ;
struct TYPE_6__ {int (* release ) (TYPE_3__*,int ) ;} ;
typedef scalar_t__ LONG ;
typedef int DWORD ;


 int CERT_STORE_PROV_EXTERNAL_FLAG ;
 int CRYPT_FreeStore (TYPE_5__*) ;
 int ERROR_SUCCESS ;
 int FIXME (char*,int ) ;
 scalar_t__ InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_2__*,scalar_t__) ;
 int stub1 (int ,int ) ;
 int stub2 (TYPE_3__*,int ) ;

__attribute__((used)) static DWORD ProvStore_release(WINECRYPT_CERTSTORE *cert_store, DWORD flags)
{
    WINE_PROVIDERSTORE *store = (WINE_PROVIDERSTORE*)cert_store;
    LONG ref;

    if(flags)
        FIXME("Unimplemented flags %x\n", flags);

    ref = InterlockedDecrement(&store->hdr.ref);
    TRACE("(%p) ref=%d\n", store, ref);

    if(ref)
        return ERROR_SUCCESS;

    if (store->provCloseStore)
        store->provCloseStore(store->hStoreProv, flags);
    if (!(store->dwStoreProvFlags & CERT_STORE_PROV_EXTERNAL_FLAG))
        store->memStore->vtbl->release(store->memStore, flags);
    CRYPT_FreeStore(&store->hdr);
    return ERROR_SUCCESS;
}
