
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coro {int dummy; } ;
struct cache_entry {int dummy; } ;
struct cache {int dummy; } ;


 int CONN_CORO_YIELD ;
 int EWOULDBLOCK ;
 int GET_AND_REF_TRIES ;
 scalar_t__ LIKELY (struct cache_entry*) ;
 int cache_entry_unref_defer ;
 struct cache_entry* cache_get_and_ref_entry (struct cache*,char const*,int*) ;
 int coro_defer2 (struct coro*,int ,struct cache*,struct cache_entry*) ;
 int coro_yield (struct coro*,int ) ;

struct cache_entry *cache_coro_get_and_ref_entry(struct cache *cache,
                                                 struct coro *coro,
                                                 const char *key)
{
    for (int tries = GET_AND_REF_TRIES; tries; tries--) {
        int error;
        struct cache_entry *ce = cache_get_and_ref_entry(cache, key, &error);

        if (LIKELY(ce)) {





            coro_defer2(coro, cache_entry_unref_defer, cache, ce);
            return ce;
        }





        if (error == EWOULDBLOCK) {
            coro_yield(coro, CONN_CORO_YIELD);
        } else {
            break;
        }
    }

    return ((void*)0);
}
