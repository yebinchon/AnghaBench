
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int impls; } ;
struct TYPE_11__ {void* method; int properties; } ;
struct TYPE_10__ {int * global_properties; int ctx; } ;
typedef int OSSL_PROPERTY_LIST ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef TYPE_2__ IMPLEMENTATION ;
typedef TYPE_3__ ALGORITHM ;


 int OPENSSL_INIT_LOAD_CONFIG ;
 int OPENSSL_init_crypto (int ,int *) ;
 TYPE_3__* ossl_method_store_retrieve (TYPE_1__*,int) ;
 int * ossl_parse_query (int ,char const*) ;
 int ossl_property_free (int *) ;
 int ossl_property_has_optional (int *) ;
 int ossl_property_match_count (int *,int ) ;
 int * ossl_property_merge (int *,int *) ;
 int ossl_property_read_lock (TYPE_1__*) ;
 int ossl_property_unlock (TYPE_1__*) ;
 int sk_IMPLEMENTATION_num (int ) ;
 TYPE_2__* sk_IMPLEMENTATION_value (int ,int) ;

int ossl_method_store_fetch(OSSL_METHOD_STORE *store, int nid,
                            const char *prop_query, void **method)
{
    ALGORITHM *alg;
    IMPLEMENTATION *impl;
    OSSL_PROPERTY_LIST *pq = ((void*)0), *p2;
    int ret = 0;
    int j, best = -1, score, optional;


    OPENSSL_init_crypto(OPENSSL_INIT_LOAD_CONFIG, ((void*)0));


    if (nid <= 0 || method == ((void*)0) || store == ((void*)0))
        return 0;





    ossl_property_read_lock(store);
    alg = ossl_method_store_retrieve(store, nid);
    if (alg == ((void*)0)) {
        ossl_property_unlock(store);
        return 0;
    }

    if (prop_query == ((void*)0)) {
        if ((impl = sk_IMPLEMENTATION_value(alg->impls, 0)) != ((void*)0)) {
            *method = impl->method;
            ret = 1;
        }
        goto fin;
    }
    pq = ossl_parse_query(store->ctx, prop_query);
    if (pq == ((void*)0))
        goto fin;
    if (store->global_properties != ((void*)0)) {
        p2 = ossl_property_merge(pq, store->global_properties);
        if (p2 == ((void*)0))
            goto fin;
        ossl_property_free(pq);
        pq = p2;
    }
    optional = ossl_property_has_optional(pq);
    for (j = 0; j < sk_IMPLEMENTATION_num(alg->impls); j++) {
        impl = sk_IMPLEMENTATION_value(alg->impls, j);
        score = ossl_property_match_count(pq, impl->properties);
        if (score > best) {
            *method = impl->method;
            ret = 1;
            if (!optional)
                goto fin;
            best = score;
        }
    }
fin:
    ossl_property_unlock(store);
    ossl_property_free(pq);
    return ret;
}
