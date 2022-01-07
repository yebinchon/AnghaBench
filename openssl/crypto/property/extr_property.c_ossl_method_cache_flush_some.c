
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int seed; scalar_t__ nelem; } ;
struct TYPE_5__ {scalar_t__ nelem; int algs; scalar_t__ need_flush; } ;
typedef TYPE_1__ OSSL_METHOD_STORE ;
typedef TYPE_2__ IMPL_CACHE_FLUSH ;


 int OPENSSL_rdtsc () ;
 int impl_cache_flush_one_alg ;
 int ossl_sa_ALGORITHM_doall_arg (int ,int *,TYPE_2__*) ;

__attribute__((used)) static void ossl_method_cache_flush_some(OSSL_METHOD_STORE *store)
{
    IMPL_CACHE_FLUSH state;

    state.nelem = 0;
    if ((state.seed = OPENSSL_rdtsc()) == 0)
        state.seed = 1;
    store->need_flush = 0;
    ossl_sa_ALGORITHM_doall_arg(store->algs, &impl_cache_flush_one_alg, &state);
    store->nelem = state.nelem;
}
