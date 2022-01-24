#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct coro {int dummy; } ;
struct cache_entry {int dummy; } ;
struct cache {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONN_CORO_YIELD ; 
 int EWOULDBLOCK ; 
 int GET_AND_REF_TRIES ; 
 scalar_t__ FUNC0 (struct cache_entry*) ; 
 int /*<<< orphan*/  cache_entry_unref_defer ; 
 struct cache_entry* FUNC1 (struct cache*,char const*,int*) ; 
 int /*<<< orphan*/  FUNC2 (struct coro*,int /*<<< orphan*/ ,struct cache*,struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct coro*,int /*<<< orphan*/ ) ; 

struct cache_entry *FUNC4(struct cache *cache,
                                                 struct coro *coro,
                                                 const char *key)
{
    for (int tries = GET_AND_REF_TRIES; tries; tries--) {
        int error;
        struct cache_entry *ce = FUNC1(cache, key, &error);

        if (FUNC0(ce)) {
            /*
             * This is deferred here so that, if the coroutine is killed
             * after it has been yielded, this cache entry is properly
             * freed.
             */
            FUNC2(coro, cache_entry_unref_defer, cache, ce);
            return ce;
        }

        /*
         * If the cache would block while reading its hash table, yield and
         * try again. On any other error, just return NULL.
         */
        if (error == EWOULDBLOCK) {
            FUNC3(coro, CONN_CORO_YIELD);
        } else {
            break;
        }
    }

    return NULL;
}