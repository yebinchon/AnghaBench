
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
struct TYPE_6__ {int cache; } ;
struct TYPE_5__ {int cache; } ;
typedef TYPE_1__ IMPL_CACHE_FLUSH ;
typedef TYPE_2__ ALGORITHM ;


 int impl_cache_flush_cache ;
 int lh_QUERY_doall_IMPL_CACHE_FLUSH (int ,int *,TYPE_1__*) ;

__attribute__((used)) static void impl_cache_flush_one_alg(ossl_uintmax_t idx, ALGORITHM *alg,
                                     void *v)
{
    IMPL_CACHE_FLUSH *state = (IMPL_CACHE_FLUSH *)v;

    state->cache = alg->cache;
    lh_QUERY_doall_IMPL_CACHE_FLUSH(state->cache, &impl_cache_flush_cache,
                                    state);
}
