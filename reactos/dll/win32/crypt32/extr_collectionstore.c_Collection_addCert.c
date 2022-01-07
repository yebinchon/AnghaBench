
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int * ptr; } ;
struct TYPE_13__ {TYPE_1__ u; } ;
typedef TYPE_2__ context_t ;
struct TYPE_14__ {TYPE_2__ base; } ;
typedef TYPE_3__ cert_t ;
typedef int WINE_STORE_LIST_ENTRY ;
typedef int WINE_COLLECTIONSTORE ;
typedef int WINECRYPT_CERTSTORE ;
typedef int BOOL ;


 int CRYPT_CollectionAddContext (int *,int ,TYPE_2__*,TYPE_2__*,TYPE_2__**) ;
 scalar_t__ CRYPT_CollectionCreateContextFromChild (int *,int *,TYPE_2__*) ;
 int Context_Release (TYPE_2__*) ;
 int certs ;
 int offsetof (int ,int ) ;
 int store_vtbl_t ;

__attribute__((used)) static BOOL Collection_addCert(WINECRYPT_CERTSTORE *store, context_t *cert,
 context_t *toReplace, context_t **ppStoreContext, BOOL use_link)
{
    BOOL ret;
    context_t *childContext = ((void*)0);
    WINE_COLLECTIONSTORE *cs = (WINE_COLLECTIONSTORE*)store;

    ret = CRYPT_CollectionAddContext(cs, offsetof(store_vtbl_t, certs),
     cert, toReplace, &childContext);
    if (ppStoreContext && childContext)
    {
        WINE_STORE_LIST_ENTRY *storeEntry = childContext->u.ptr;
        cert_t *context = (cert_t*)CRYPT_CollectionCreateContextFromChild(cs, storeEntry,
         childContext);

        *ppStoreContext = &context->base;
    }
    if (childContext)
        Context_Release(childContext);
    return ret;
}
