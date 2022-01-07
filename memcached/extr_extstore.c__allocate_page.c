
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ allocated; int active; int free; int closed; unsigned int bucket; int id; int version; struct TYPE_8__* next; } ;
typedef TYPE_1__ store_page ;
struct TYPE_9__ {scalar_t__ page_size; scalar_t__ page_free; TYPE_1__** page_buckets; TYPE_1__* page_freelist; TYPE_1__** free_page_buckets; } ;
typedef TYPE_2__ store_engine ;


 int E_DEBUG (char*,...) ;
 int STAT_INCR (TYPE_2__*,int ,int) ;
 int _next_version (TYPE_2__*) ;
 int assert (int) ;
 int extstore_run_maint (TYPE_2__*) ;
 int page_allocs ;

__attribute__((used)) static store_page *_allocate_page(store_engine *e, unsigned int bucket,
        unsigned int free_bucket) {
    assert(!e->page_buckets[bucket] || e->page_buckets[bucket]->allocated == e->page_size);
    store_page *tmp = ((void*)0);

    if (free_bucket != 0 && e->free_page_buckets[free_bucket] != ((void*)0)) {
        assert(e->page_free > 0);
        tmp = e->free_page_buckets[free_bucket];
        e->free_page_buckets[free_bucket] = tmp->next;
    }

    if (tmp == ((void*)0) && e->page_freelist != ((void*)0)) {
        tmp = e->page_freelist;
        e->page_freelist = tmp->next;
    }
    E_DEBUG("EXTSTORE: allocating new page\n");


    if (e->page_free > 0 && tmp != ((void*)0)) {
        tmp->next = e->page_buckets[bucket];
        e->page_buckets[bucket] = tmp;
        tmp->active = 1;
        tmp->free = 0;
        tmp->closed = 0;
        tmp->version = _next_version(e);
        tmp->bucket = bucket;
        e->page_free--;
        STAT_INCR(e, page_allocs, 1);
    } else {
        extstore_run_maint(e);
    }
    if (tmp)
        E_DEBUG("EXTSTORE: got page %u\n", tmp->id);
    return tmp;
}
