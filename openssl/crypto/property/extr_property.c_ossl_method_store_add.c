
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_21__ {int nid; int * impls; int * cache; } ;
struct TYPE_20__ {void (* method_destruct ) (void*) ;scalar_t__ properties; int const* provider; void* method; } ;
struct TYPE_19__ {int ctx; } ;
typedef int OSSL_PROVIDER ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef TYPE_2__ IMPLEMENTATION ;
typedef TYPE_3__ ALGORITHM ;


 int OPENSSL_free (TYPE_2__*) ;
 TYPE_2__* OPENSSL_malloc (int) ;
 TYPE_3__* OPENSSL_zalloc (int) ;
 int alg_cleanup (int ,TYPE_3__*) ;
 int impl_free (TYPE_2__*) ;
 int * lh_QUERY_new (int *,int *) ;
 int ossl_method_cache_flush (TYPE_1__*,int) ;
 int ossl_method_store_insert (TYPE_1__*,TYPE_3__*) ;
 TYPE_3__* ossl_method_store_retrieve (TYPE_1__*,int) ;
 int * ossl_parse_property (int ,char const*) ;
 int * ossl_prop_defn_get (int ,char const*) ;
 int ossl_prop_defn_set (int ,char const*,int *) ;
 int ossl_property_unlock (TYPE_1__*) ;
 int ossl_property_write_lock (TYPE_1__*) ;
 int query_cmp ;
 int query_hash ;
 int * sk_IMPLEMENTATION_new_null () ;
 int sk_IMPLEMENTATION_num (int *) ;
 scalar_t__ sk_IMPLEMENTATION_push (int *,TYPE_2__*) ;
 TYPE_2__* sk_IMPLEMENTATION_value (int *,int) ;

int ossl_method_store_add(OSSL_METHOD_STORE *store, const OSSL_PROVIDER *prov,
                          int nid, const char *properties, void *method,
                          int (*method_up_ref)(void *),
                          void (*method_destruct)(void *))
{
    ALGORITHM *alg = ((void*)0);
    IMPLEMENTATION *impl;
    int ret = 0;
    int i;

    if (nid <= 0 || method == ((void*)0) || store == ((void*)0))
        return 0;
    if (properties == ((void*)0))
        properties = "";


    impl = OPENSSL_malloc(sizeof(*impl));
    if (impl == ((void*)0))
        return 0;
    if (method_up_ref != ((void*)0) && !method_up_ref(method)) {
        OPENSSL_free(impl);
        return 0;
    }
    impl->provider = prov;
    impl->method = method;
    impl->method_destruct = method_destruct;







    ossl_property_write_lock(store);
    ossl_method_cache_flush(store, nid);
    if ((impl->properties = ossl_prop_defn_get(store->ctx, properties)) == ((void*)0)) {
        impl->properties = ossl_parse_property(store->ctx, properties);
        if (impl->properties == ((void*)0))
            goto err;
        ossl_prop_defn_set(store->ctx, properties, impl->properties);
    }

    alg = ossl_method_store_retrieve(store, nid);
    if (alg == ((void*)0)) {
        if ((alg = OPENSSL_zalloc(sizeof(*alg))) == ((void*)0)
                || (alg->impls = sk_IMPLEMENTATION_new_null()) == ((void*)0)
                || (alg->cache = lh_QUERY_new(&query_hash, &query_cmp)) == ((void*)0))
            goto err;
        alg->nid = nid;
        if (!ossl_method_store_insert(store, alg))
            goto err;
    }


    for (i = 0; i < sk_IMPLEMENTATION_num(alg->impls); i++) {
        const IMPLEMENTATION *tmpimpl = sk_IMPLEMENTATION_value(alg->impls, i);

        if (tmpimpl->provider == impl->provider
            && tmpimpl->properties == impl->properties)
            break;
    }
    if (i == sk_IMPLEMENTATION_num(alg->impls)
        && sk_IMPLEMENTATION_push(alg->impls, impl))
        ret = 1;
    ossl_property_unlock(store);
    if (ret == 0)
        impl_free(impl);
    return ret;

err:
    ossl_property_unlock(store);
    alg_cleanup(0, alg);
    impl_free(impl);
    return 0;
}
