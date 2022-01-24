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
struct idmap_cache {int /*<<< orphan*/  lock; TYPE_1__* ops; int /*<<< orphan*/  head; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* entry_copy ) (struct list_entry*,struct list_entry*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int ERROR_NOT_FOUND ; 
 int NO_ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct list_entry* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct list_entry*,struct list_entry*) ; 

__attribute__((used)) static int FUNC4(
    struct idmap_cache *cache,
    const struct idmap_lookup *lookup,
    struct list_entry *entry_out)
{
    struct list_entry *entry;
    int status = ERROR_NOT_FOUND;

    FUNC0(&cache->lock);

    entry = FUNC2(&cache->head, lookup->value, lookup->compare);
    if (entry) {
        /* make a copy for use outside of the lock */
        cache->ops->entry_copy(entry_out, entry);
        status = NO_ERROR;
    }

    FUNC1(&cache->lock);
    return status;
}