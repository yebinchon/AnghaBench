
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct idmap_lookup {int compare; int value; } ;
struct idmap_cache {int lock; int head; TYPE_1__* ops; } ;
struct TYPE_2__ {int (* entry_copy ) (struct list_entry*,struct list_entry const*) ;struct list_entry* (* entry_alloc ) () ;} ;


 int AcquireSRWLockExclusive (int *) ;
 int GetLastError () ;
 int NO_ERROR ;
 int ReleaseSRWLockExclusive (int *) ;
 int list_add_head (int *,struct list_entry*) ;
 struct list_entry* list_search (int *,int ,int ) ;
 int stub1 (struct list_entry*,struct list_entry const*) ;
 struct list_entry* stub2 () ;
 int stub3 (struct list_entry*,struct list_entry const*) ;

__attribute__((used)) static int cache_insert(
    struct idmap_cache *cache,
    const struct idmap_lookup *lookup,
    const struct list_entry *src)
{
    struct list_entry *entry;
    int status = NO_ERROR;

    AcquireSRWLockExclusive(&cache->lock);


    entry = list_search(&cache->head, lookup->value, lookup->compare);
    if (entry) {

        cache->ops->entry_copy(entry, src);
        goto out;
    }


    entry = cache->ops->entry_alloc();
    if (entry == ((void*)0)) {
        status = GetLastError();
        goto out;
    }
    cache->ops->entry_copy(entry, src);
    list_add_head(&cache->head, entry);
out:
    ReleaseSRWLockExclusive(&cache->lock);
    return status;
}
