
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int impls; } ;
struct TYPE_6__ {void const* method; } ;
typedef int OSSL_METHOD_STORE ;
typedef TYPE_1__ IMPLEMENTATION ;
typedef TYPE_2__ ALGORITHM ;


 int impl_free (TYPE_1__*) ;
 int ossl_method_cache_flush (int *,int) ;
 TYPE_2__* ossl_method_store_retrieve (int *,int) ;
 int ossl_property_unlock (int *) ;
 int ossl_property_write_lock (int *) ;
 int sk_IMPLEMENTATION_delete (int ,int) ;
 int sk_IMPLEMENTATION_num (int ) ;
 TYPE_1__* sk_IMPLEMENTATION_value (int ,int) ;

int ossl_method_store_remove(OSSL_METHOD_STORE *store, int nid,
                             const void *method)
{
    ALGORITHM *alg = ((void*)0);
    int i;

    if (nid <= 0 || method == ((void*)0) || store == ((void*)0))
        return 0;

    ossl_property_write_lock(store);
    ossl_method_cache_flush(store, nid);
    alg = ossl_method_store_retrieve(store, nid);
    if (alg == ((void*)0)) {
        ossl_property_unlock(store);
        return 0;
    }






    for (i = 0; i < sk_IMPLEMENTATION_num(alg->impls); i++) {
        IMPLEMENTATION *impl = sk_IMPLEMENTATION_value(alg->impls, i);

        if (impl->method == method) {
            sk_IMPLEMENTATION_delete(alg->impls, i);
            ossl_property_unlock(store);
            impl_free(impl);
            return 1;
        }
    }
    ossl_property_unlock(store);
    return 0;
}
