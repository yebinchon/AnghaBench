
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int seed; int nelem; int cache; } ;
typedef int QUERY ;
typedef TYPE_1__ IMPL_CACHE_FLUSH ;


 int OPENSSL_free (int ) ;
 int lh_QUERY_delete (int ,int *) ;

__attribute__((used)) static void impl_cache_flush_cache(QUERY *c, IMPL_CACHE_FLUSH *state)
{
    uint32_t n;
    n = state->seed;
    n ^= n << 13;
    n ^= n >> 17;
    n ^= n << 5;
    state->seed = n;

    if ((n & 1) != 0)
        OPENSSL_free(lh_QUERY_delete(state->cache, c));
    else
        state->nelem++;
}
