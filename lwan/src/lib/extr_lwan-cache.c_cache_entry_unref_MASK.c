#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct cache_entry {int flags; int /*<<< orphan*/  refs; int /*<<< orphan*/  key; } ;
struct TYPE_2__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* destroy_entry ) (struct cache_entry*,int /*<<< orphan*/ ) ;} ;
struct cache {TYPE_1__ cb; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FLOATING ; 
 int FREE_KEY_ON_DESTROY ; 
 int TEMPORARY ; 
 int /*<<< orphan*/  FUNC1 (struct cache_entry*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cache_entry*,int /*<<< orphan*/ ) ; 

void FUNC4(struct cache *cache, struct cache_entry *entry)
{
    FUNC1(entry);

    if (entry->flags & TEMPORARY) {
        /* FREE_KEY_ON_DESTROY is set on elements that never got into the
         * hash table, so their keys are never destroyed automatically. */
        if (entry->flags & FREE_KEY_ON_DESTROY)
            FUNC2(entry->key);

        goto destroy_entry;
    }

    if (FUNC0(entry->refs))
        return;

    /* FLOATING entries without references won't be picked up by the pruner
     * job, so destroy them right here. */
    if (entry->flags & FLOATING) {
destroy_entry:
        /* FIXME: There's a race condition here: if the cache is destroyed
         * while there are cache items floating around, this will dereference
         * deallocated memory. */
        cache->cb.destroy_entry(entry, cache->cb.context);
    }
}