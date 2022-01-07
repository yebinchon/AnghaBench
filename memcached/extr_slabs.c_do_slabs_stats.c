
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef unsigned long long uint32_t ;
struct thread_stats {TYPE_1__* slab_stats; } ;
struct TYPE_5__ {scalar_t__ slabs; unsigned long long perslab; unsigned long long size; unsigned long long sl_curr; } ;
typedef TYPE_2__ slabclass_t ;
struct TYPE_4__ {scalar_t__ touch_hits; scalar_t__ cas_badval; scalar_t__ cas_hits; scalar_t__ decr_hits; scalar_t__ incr_hits; scalar_t__ delete_hits; scalar_t__ set_cmds; scalar_t__ get_hits; } ;
typedef int (* ADD_STAT ) (int *,int ,int *,int ,void*) ;


 int APPEND_NUM_STAT (int,char*,char*,unsigned long long) ;
 int APPEND_STAT (char*,char*,unsigned long long) ;
 int POWER_SMALLEST ;
 int STAT_KEY_LEN ;
 int STAT_VAL_LEN ;
 scalar_t__ mem_malloced ;
 int power_largest ;
 TYPE_2__* slabclass ;
 int threadlocal_stats_aggregate (struct thread_stats*) ;

__attribute__((used)) static void do_slabs_stats(ADD_STAT add_stats, void *c) {
    int i, total;

    struct thread_stats thread_stats;
    threadlocal_stats_aggregate(&thread_stats);

    total = 0;
    for(i = POWER_SMALLEST; i <= power_largest; i++) {
        slabclass_t *p = &slabclass[i];
        if (p->slabs != 0) {
            uint32_t perslab, slabs;
            slabs = p->slabs;
            perslab = p->perslab;

            char key_str[STAT_KEY_LEN];
            char val_str[STAT_VAL_LEN];
            int klen = 0, vlen = 0;

            APPEND_NUM_STAT(i, "chunk_size", "%u", p->size);
            APPEND_NUM_STAT(i, "chunks_per_page", "%u", perslab);
            APPEND_NUM_STAT(i, "total_pages", "%u", slabs);
            APPEND_NUM_STAT(i, "total_chunks", "%u", slabs * perslab);
            APPEND_NUM_STAT(i, "used_chunks", "%u",
                            slabs*perslab - p->sl_curr);
            APPEND_NUM_STAT(i, "free_chunks", "%u", p->sl_curr);

            APPEND_NUM_STAT(i, "free_chunks_end", "%u", 0);
            APPEND_NUM_STAT(i, "get_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].get_hits);
            APPEND_NUM_STAT(i, "cmd_set", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].set_cmds);
            APPEND_NUM_STAT(i, "delete_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].delete_hits);
            APPEND_NUM_STAT(i, "incr_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].incr_hits);
            APPEND_NUM_STAT(i, "decr_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].decr_hits);
            APPEND_NUM_STAT(i, "cas_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].cas_hits);
            APPEND_NUM_STAT(i, "cas_badval", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].cas_badval);
            APPEND_NUM_STAT(i, "touch_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].touch_hits);
            total++;
        }
    }



    APPEND_STAT("active_slabs", "%d", total);
    APPEND_STAT("total_malloced", "%llu", (unsigned long long)mem_malloced);
    add_stats(((void*)0), 0, ((void*)0), 0, c);
}
