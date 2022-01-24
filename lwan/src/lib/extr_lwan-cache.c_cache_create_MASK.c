#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_8__ {int /*<<< orphan*/  table; int /*<<< orphan*/  lock; } ;
struct TYPE_7__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct TYPE_6__ {scalar_t__ time_to_live; } ;
struct TYPE_5__ {int create_entry; int destroy_entry; void* context; } ;
struct cache {TYPE_4__ hash; TYPE_3__ queue; TYPE_2__ settings; TYPE_1__ cb; } ;
typedef  int cache_destroy_entry_cb ;
typedef  int cache_create_entry_cb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cache_pruner_job ; 
 struct cache* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cache*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  (*) (struct cache*),int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,struct cache*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

struct cache *FUNC9(cache_create_entry_cb create_entry_cb,
                             cache_destroy_entry_cb destroy_entry_cb,
                             void *cb_context,
                             time_t time_to_live)
{
    struct cache *cache;

    FUNC0(create_entry_cb);
    FUNC0(destroy_entry_cb);
    FUNC0(time_to_live > 0);

    cache = FUNC1(1, sizeof(*cache));
    if (!cache)
        return NULL;

    cache->hash.table = FUNC4(free, NULL);
    if (!cache->hash.table)
        goto error_no_hash;

    if (FUNC8(&cache->hash.lock, NULL))
        goto error_no_hash_lock;
    if (FUNC8(&cache->queue.lock, NULL))
        goto error_no_queue_lock;

    cache->cb.create_entry = create_entry_cb;
    cache->cb.destroy_entry = destroy_entry_cb;
    cache->cb.context = cb_context;

    cache->settings.time_to_live = time_to_live;

    FUNC5(&cache->queue.list);

    FUNC6(cache_pruner_job, cache);

    return cache;

error_no_queue_lock:
    FUNC7(&cache->hash.lock);
error_no_hash_lock:
    FUNC3(cache->hash.table);
error_no_hash:
    FUNC2(cache);

    return NULL;
}