
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cache_entry {int flags; int refs; int key; } ;
struct TYPE_2__ {int context; int (* destroy_entry ) (struct cache_entry*,int ) ;} ;
struct cache {TYPE_1__ cb; } ;


 scalar_t__ ATOMIC_DEC (int ) ;
 int FLOATING ;
 int FREE_KEY_ON_DESTROY ;
 int TEMPORARY ;
 int assert (struct cache_entry*) ;
 int free (int ) ;
 int stub1 (struct cache_entry*,int ) ;

void cache_entry_unref(struct cache *cache, struct cache_entry *entry)
{
    assert(entry);

    if (entry->flags & TEMPORARY) {


        if (entry->flags & FREE_KEY_ON_DESTROY)
            free(entry->key);

        goto destroy_entry;
    }

    if (ATOMIC_DEC(entry->refs))
        return;



    if (entry->flags & FLOATING) {
destroy_entry:



        cache->cb.destroy_entry(entry, cache->cb.context);
    }
}
