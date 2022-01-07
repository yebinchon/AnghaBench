
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_7__ {int size; int slabs; char** slab_list; } ;
typedef TYPE_1__ slabclass_t ;
typedef char item ;
struct TYPE_11__ {int verbose; scalar_t__ slab_page_size; } ;
struct TYPE_10__ {size_t s_clsid; size_t d_clsid; char* slab_pos; char* slab_start; char* slab_end; int completed; scalar_t__ busy_deletes; scalar_t__ chunk_rescues; scalar_t__ rescues; scalar_t__ inline_reclaim; scalar_t__ evictions_nomem; scalar_t__ done; scalar_t__ busy_loops; } ;
struct TYPE_9__ {int slab_reassign_busy_deletes; int slab_reassign_chunk_rescues; int slab_reassign_inline_reclaim; int slab_reassign_evictions_nomem; int slab_reassign_rescues; int slabs_moved; } ;
struct TYPE_8__ {int slab_reassign_running; } ;


 int ITEM_FETCHED ;
 int ITEM_SLABBED ;
 int ITEM_key (char*) ;
 size_t SLAB_GLOBAL_PAGE_POOL ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 int assert (int) ;
 int fprintf (int ,char*) ;
 int free (int ) ;
 int mem_limit_reached ;
 scalar_t__ memcmp (int ,char*,int) ;
 int memory_release () ;
 int memset (char*,int ,int) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 TYPE_6__ settings ;
 TYPE_5__ slab_rebal ;
 scalar_t__ slab_rebalance_signal ;
 TYPE_1__* slabclass ;
 int slabs_lock ;
 int split_slab_page_into_freelist (char*,size_t) ;
 TYPE_3__ stats ;
 TYPE_2__ stats_state ;
 int stderr ;

__attribute__((used)) static void slab_rebalance_finish(void) {
    slabclass_t *s_cls;
    slabclass_t *d_cls;
    int x;
    uint32_t rescues;
    uint32_t evictions_nomem;
    uint32_t inline_reclaim;
    uint32_t chunk_rescues;
    uint32_t busy_deletes;

    pthread_mutex_lock(&slabs_lock);

    s_cls = &slabclass[slab_rebal.s_clsid];
    d_cls = &slabclass[slab_rebal.d_clsid];
    s_cls->slabs--;
    for (x = 0; x < s_cls->slabs; x++) {
        s_cls->slab_list[x] = s_cls->slab_list[x+1];
    }

    d_cls->slab_list[d_cls->slabs++] = slab_rebal.slab_start;

    if (slab_rebal.d_clsid > SLAB_GLOBAL_PAGE_POOL) {
        memset(slab_rebal.slab_start, 0, (size_t)settings.slab_page_size);
        split_slab_page_into_freelist(slab_rebal.slab_start,
            slab_rebal.d_clsid);
    } else if (slab_rebal.d_clsid == SLAB_GLOBAL_PAGE_POOL) {

        memset(slab_rebal.slab_start, 0, sizeof(item));

        mem_limit_reached = 0;
        memory_release();
    }

    slab_rebal.busy_loops = 0;
    slab_rebal.done = 0;
    slab_rebal.s_clsid = 0;
    slab_rebal.d_clsid = 0;
    slab_rebal.slab_start = ((void*)0);
    slab_rebal.slab_end = ((void*)0);
    slab_rebal.slab_pos = ((void*)0);
    evictions_nomem = slab_rebal.evictions_nomem;
    inline_reclaim = slab_rebal.inline_reclaim;
    rescues = slab_rebal.rescues;
    chunk_rescues = slab_rebal.chunk_rescues;
    busy_deletes = slab_rebal.busy_deletes;
    slab_rebal.evictions_nomem = 0;
    slab_rebal.inline_reclaim = 0;
    slab_rebal.rescues = 0;
    slab_rebal.chunk_rescues = 0;
    slab_rebal.busy_deletes = 0;

    slab_rebalance_signal = 0;

    free(slab_rebal.completed);
    pthread_mutex_unlock(&slabs_lock);

    STATS_LOCK();
    stats.slabs_moved++;
    stats.slab_reassign_rescues += rescues;
    stats.slab_reassign_evictions_nomem += evictions_nomem;
    stats.slab_reassign_inline_reclaim += inline_reclaim;
    stats.slab_reassign_chunk_rescues += chunk_rescues;
    stats.slab_reassign_busy_deletes += busy_deletes;
    stats_state.slab_reassign_running = 0;
    STATS_UNLOCK();

    if (settings.verbose > 1) {
        fprintf(stderr, "finished a slab move\n");
    }
}
