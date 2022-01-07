
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_17__ {int cache; } ;
struct TYPE_16__ {int need_flush; scalar_t__ nelem; } ;
struct TYPE_15__ {char const* query; char const* body; void* method; } ;
typedef TYPE_1__ QUERY ;
typedef TYPE_2__ OSSL_METHOD_STORE ;
typedef TYPE_3__ ALGORITHM ;


 scalar_t__ IMPL_CACHE_FLUSH_THRESHOLD ;
 int OPENSSL_free (TYPE_1__*) ;
 TYPE_1__* OPENSSL_malloc (int) ;
 int * lh_QUERY_delete (int ,TYPE_1__*) ;
 int lh_QUERY_error (int ) ;
 TYPE_1__* lh_QUERY_insert (int ,TYPE_1__*) ;
 int memcpy (char*,char const*,size_t) ;
 int ossl_method_cache_flush_some (TYPE_2__*) ;
 TYPE_3__* ossl_method_store_retrieve (TYPE_2__*,int) ;
 int ossl_property_unlock (TYPE_2__*) ;
 int ossl_property_write_lock (TYPE_2__*) ;
 size_t strlen (char const*) ;

int ossl_method_store_cache_set(OSSL_METHOD_STORE *store, int nid,
                                const char *prop_query, void *method)
{
    QUERY elem, *old, *p = ((void*)0);
    ALGORITHM *alg;
    size_t len;

    if (nid <= 0 || store == ((void*)0))
        return 0;
    if (prop_query == ((void*)0))
        return 1;

    ossl_property_write_lock(store);
    if (store->need_flush)
        ossl_method_cache_flush_some(store);
    alg = ossl_method_store_retrieve(store, nid);
    if (alg == ((void*)0)) {
        ossl_property_unlock(store);
        return 0;
    }

    if (method == ((void*)0)) {
        elem.query = prop_query;
        if (lh_QUERY_delete(alg->cache, &elem) != ((void*)0))
            store->nelem--;
        ossl_property_unlock(store);
        return 1;
    }
    p = OPENSSL_malloc(sizeof(*p) + (len = strlen(prop_query)));
    if (p != ((void*)0)) {
        p->query = p->body;
        p->method = method;
        memcpy((char *)p->query, prop_query, len + 1);
        if ((old = lh_QUERY_insert(alg->cache, p)) != ((void*)0)) {
            OPENSSL_free(old);
            ossl_property_unlock(store);
            return 1;
        }
        if (!lh_QUERY_error(alg->cache)) {
            if (++store->nelem >= IMPL_CACHE_FLUSH_THRESHOLD)
                store->need_flush = 1;
            ossl_property_unlock(store);
            return 1;
        }
    }
    ossl_property_unlock(store);
    OPENSSL_free(p);
    return 0;
}
