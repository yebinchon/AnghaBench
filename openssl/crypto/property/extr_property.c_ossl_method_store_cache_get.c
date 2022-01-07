
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int cache; } ;
struct TYPE_6__ {char const* query; void* method; } ;
typedef TYPE_1__ QUERY ;
typedef int OSSL_METHOD_STORE ;
typedef TYPE_2__ ALGORITHM ;


 TYPE_1__* lh_QUERY_retrieve (int ,TYPE_1__*) ;
 TYPE_2__* ossl_method_store_retrieve (int *,int) ;
 int ossl_property_read_lock (int *) ;
 int ossl_property_unlock (int *) ;

int ossl_method_store_cache_get(OSSL_METHOD_STORE *store, int nid,
                                const char *prop_query, void **method)
{
    ALGORITHM *alg;
    QUERY elem, *r;

    if (nid <= 0 || store == ((void*)0))
        return 0;

    ossl_property_read_lock(store);
    alg = ossl_method_store_retrieve(store, nid);
    if (alg == ((void*)0)) {
        ossl_property_unlock(store);
        return 0;
    }

    elem.query = prop_query != ((void*)0) ? prop_query : "";
    r = lh_QUERY_retrieve(alg->cache, &elem);
    if (r == ((void*)0)) {
        ossl_property_unlock(store);
        return 0;
    }
    *method = r->method;
    ossl_property_unlock(store);
    return 1;
}
