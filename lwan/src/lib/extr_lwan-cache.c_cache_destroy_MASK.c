#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  table; int /*<<< orphan*/  lock; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {int /*<<< orphan*/  evicted; int /*<<< orphan*/  misses; int /*<<< orphan*/  hits; } ;
struct cache {TYPE_2__ hash; TYPE_1__ queue; int /*<<< orphan*/  flags; TYPE_3__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  SHUTTING_DOWN ; 
 int /*<<< orphan*/  FUNC0 (struct cache*) ; 
 int /*<<< orphan*/  FUNC1 (struct cache*) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (struct cache*),struct cache*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct cache *cache)
{
    FUNC0(cache);

#ifndef NDEBUG
    FUNC5("Cache stats: %d hits, %d misses, %d evictions",
                      cache->stats.hits, cache->stats.misses,
                      cache->stats.evicted);
#endif

    FUNC4(cache_pruner_job, cache);
    cache->flags |= SHUTTING_DOWN;
    FUNC1(cache);
    FUNC6(&cache->hash.lock);
    FUNC6(&cache->queue.lock);
    FUNC3(cache->hash.table);
    FUNC2(cache);
}