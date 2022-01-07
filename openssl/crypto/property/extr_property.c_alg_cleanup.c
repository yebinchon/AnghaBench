
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
struct TYPE_4__ {int cache; int impls; } ;
typedef TYPE_1__ ALGORITHM ;


 int OPENSSL_free (TYPE_1__*) ;
 int impl_cache_free ;
 int impl_free ;
 int lh_QUERY_doall (int ,int *) ;
 int lh_QUERY_free (int ) ;
 int sk_IMPLEMENTATION_pop_free (int ,int *) ;

__attribute__((used)) static void alg_cleanup(ossl_uintmax_t idx, ALGORITHM *a)
{
    if (a != ((void*)0)) {
        sk_IMPLEMENTATION_pop_free(a->impls, &impl_free);
        lh_QUERY_doall(a->cache, &impl_cache_free);
        lh_QUERY_free(a->cache);
        OPENSSL_free(a);
    }
}
