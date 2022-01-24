#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long long uint32_t ;
struct thread_stats {TYPE_1__* slab_stats; } ;
struct TYPE_5__ {scalar_t__ slabs; unsigned long long perslab; unsigned long long size; unsigned long long sl_curr; } ;
typedef  TYPE_2__ slabclass_t ;
struct TYPE_4__ {scalar_t__ touch_hits; scalar_t__ cas_badval; scalar_t__ cas_hits; scalar_t__ decr_hits; scalar_t__ incr_hits; scalar_t__ delete_hits; scalar_t__ set_cmds; scalar_t__ get_hits; } ;
typedef  int /*<<< orphan*/  (* ADD_STAT ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,char*,unsigned long long) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,unsigned long long) ; 
 int POWER_SMALLEST ; 
 int STAT_KEY_LEN ; 
 int STAT_VAL_LEN ; 
 scalar_t__ mem_malloced ; 
 int power_largest ; 
 TYPE_2__* slabclass ; 
 int /*<<< orphan*/  FUNC2 (struct thread_stats*) ; 

__attribute__((used)) static void FUNC3(ADD_STAT add_stats, void *c) {
    int i, total;
    /* Get the per-thread stats which contain some interesting aggregates */
    struct thread_stats thread_stats;
    FUNC2(&thread_stats);

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

            FUNC0(i, "chunk_size", "%u", p->size);
            FUNC0(i, "chunks_per_page", "%u", perslab);
            FUNC0(i, "total_pages", "%u", slabs);
            FUNC0(i, "total_chunks", "%u", slabs * perslab);
            FUNC0(i, "used_chunks", "%u",
                            slabs*perslab - p->sl_curr);
            FUNC0(i, "free_chunks", "%u", p->sl_curr);
            /* Stat is dead, but displaying zero instead of removing it. */
            FUNC0(i, "free_chunks_end", "%u", 0);
            FUNC0(i, "get_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].get_hits);
            FUNC0(i, "cmd_set", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].set_cmds);
            FUNC0(i, "delete_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].delete_hits);
            FUNC0(i, "incr_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].incr_hits);
            FUNC0(i, "decr_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].decr_hits);
            FUNC0(i, "cas_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].cas_hits);
            FUNC0(i, "cas_badval", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].cas_badval);
            FUNC0(i, "touch_hits", "%llu",
                    (unsigned long long)thread_stats.slab_stats[i].touch_hits);
            total++;
        }
    }

    /* add overall slab stats and append terminator */

    FUNC1("active_slabs", "%d", total);
    FUNC1("total_malloced", "%llu", (unsigned long long)mem_malloced);
    add_stats(NULL, 0, NULL, 0, c);
}