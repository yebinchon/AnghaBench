
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * global_properties; int ctx; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;


 int ossl_method_cache_flush_all (TYPE_1__*) ;
 int * ossl_parse_query (int ,char const*) ;
 int ossl_property_free (int *) ;
 int ossl_property_unlock (TYPE_1__*) ;
 int ossl_property_write_lock (TYPE_1__*) ;

int ossl_method_store_set_global_properties(OSSL_METHOD_STORE *store,
                                            const char *prop_query) {
    int ret = 0;

    if (store == ((void*)0))
        return 1;

    ossl_property_write_lock(store);
    ossl_method_cache_flush_all(store);
    if (prop_query == ((void*)0)) {
        ossl_property_free(store->global_properties);
        store->global_properties = ((void*)0);
        ossl_property_unlock(store);
        return 1;
    }
    store->global_properties = ossl_parse_query(store->ctx, prop_query);
    ret = store->global_properties != ((void*)0);
    ossl_property_unlock(store);
    return ret;
}
