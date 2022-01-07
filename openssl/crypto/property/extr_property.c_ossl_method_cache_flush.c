
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int cache; } ;
struct TYPE_7__ {int nelem; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef TYPE_2__ ALGORITHM ;


 int impl_cache_flush_alg (int ,TYPE_2__*) ;
 scalar_t__ lh_QUERY_num_items (int ) ;
 TYPE_2__* ossl_method_store_retrieve (TYPE_1__*,int) ;

__attribute__((used)) static void ossl_method_cache_flush(OSSL_METHOD_STORE *store, int nid)
{
    ALGORITHM *alg = ossl_method_store_retrieve(store, nid);

    if (alg != ((void*)0)) {
        store->nelem -= lh_QUERY_num_items(alg->cache);
        impl_cache_flush_alg(0, alg);
    }
}
