
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nelem; int algs; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;


 int impl_cache_flush_alg ;
 int ossl_sa_ALGORITHM_doall (int ,int *) ;

__attribute__((used)) static void ossl_method_cache_flush_all(OSSL_METHOD_STORE *store)
{
    ossl_sa_ALGORITHM_doall(store->algs, &impl_cache_flush_alg);
    store->nelem = 0;
}
