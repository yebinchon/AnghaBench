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
struct list_entry {int dummy; } ;
struct idmap_lookup {int /*<<< orphan*/  compare; int /*<<< orphan*/  value; } ;
struct idmap_cache {int /*<<< orphan*/  lock; int /*<<< orphan*/  head; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* entry_copy ) (struct list_entry*,struct list_entry const*) ;struct list_entry* (* entry_alloc ) () ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_entry*) ; 
 struct list_entry* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct list_entry*,struct list_entry const*) ; 
 struct list_entry* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct list_entry*,struct list_entry const*) ; 

__attribute__((used)) static int FUNC8(
    struct idmap_cache *cache,
    const struct idmap_lookup *lookup,
    const struct list_entry *src)
{
    struct list_entry *entry;
    int status = NO_ERROR;

    FUNC0(&cache->lock);

    /* search for an existing match */
    entry = FUNC4(&cache->head, lookup->value, lookup->compare);
    if (entry) {
        /* overwrite the existing entry with the new results */
        cache->ops->entry_copy(entry, src);
        goto out;
    }

    /* initialize a new entry and add it to the list */
    entry = cache->ops->entry_alloc();
    if (entry == NULL) {
        status = FUNC1();
        goto out;
    }
    cache->ops->entry_copy(entry, src);
    FUNC3(&cache->head, entry);
out:
    FUNC2(&cache->lock);
    return status;
}