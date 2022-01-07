
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct idmap_lookup {int compare; int value; } ;
struct idmap_cache {int lock; TYPE_1__* ops; int head; } ;
struct TYPE_2__ {int (* entry_copy ) (struct list_entry*,struct list_entry*) ;} ;


 int AcquireSRWLockShared (int *) ;
 int ERROR_NOT_FOUND ;
 int NO_ERROR ;
 int ReleaseSRWLockShared (int *) ;
 struct list_entry* list_search (int *,int ,int ) ;
 int stub1 (struct list_entry*,struct list_entry*) ;

__attribute__((used)) static int cache_lookup(
    struct idmap_cache *cache,
    const struct idmap_lookup *lookup,
    struct list_entry *entry_out)
{
    struct list_entry *entry;
    int status = ERROR_NOT_FOUND;

    AcquireSRWLockShared(&cache->lock);

    entry = list_search(&cache->head, lookup->value, lookup->compare);
    if (entry) {

        cache->ops->entry_copy(entry_out, entry);
        status = NO_ERROR;
    }

    ReleaseSRWLockShared(&cache->lock);
    return status;
}
