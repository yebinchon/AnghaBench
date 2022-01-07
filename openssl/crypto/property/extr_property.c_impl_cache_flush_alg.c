
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ossl_uintmax_t ;
struct TYPE_3__ {int cache; } ;
typedef TYPE_1__ ALGORITHM ;


 int impl_cache_free ;
 int lh_QUERY_doall (int ,int *) ;
 int lh_QUERY_flush (int ) ;

__attribute__((used)) static void impl_cache_flush_alg(ossl_uintmax_t idx, ALGORITHM *alg)
{
    lh_QUERY_doall(alg->cache, &impl_cache_free);
    lh_QUERY_flush(alg->cache);
}
