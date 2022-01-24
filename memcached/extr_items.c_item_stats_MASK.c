#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct thread_stats {scalar_t__* lru_hits; } ;
struct TYPE_6__ {unsigned long long evicted_time; scalar_t__ hits_to_temp; scalar_t__ hits_to_cold; scalar_t__ hits_to_warm; scalar_t__ hits_to_hot; scalar_t__ direct_reclaims; scalar_t__ moves_within_lru; scalar_t__ moves_to_warm; scalar_t__ moves_to_cold; scalar_t__ lrutail_reflocked; scalar_t__ crawler_items_checked; scalar_t__ crawler_reclaimed; scalar_t__ evicted_active; scalar_t__ evicted_unfetched; scalar_t__ expired_unfetched; scalar_t__ reclaimed; scalar_t__ tailrepairs; scalar_t__ outofmemory; scalar_t__ evicted_nonzero; scalar_t__ evicted; scalar_t__ mem_requested; } ;
typedef  TYPE_1__ itemstats_t ;
struct TYPE_9__ {unsigned long long evicted_time; scalar_t__ direct_reclaims; scalar_t__ moves_within_lru; scalar_t__ moves_to_warm; scalar_t__ moves_to_cold; scalar_t__ lrutail_reflocked; scalar_t__ crawler_items_checked; scalar_t__ crawler_reclaimed; scalar_t__ evicted_active; scalar_t__ evicted_unfetched; scalar_t__ expired_unfetched; scalar_t__ reclaimed; scalar_t__ tailrepairs; scalar_t__ outofmemory; scalar_t__ evicted_nonzero; scalar_t__ evicted; } ;
struct TYPE_8__ {scalar_t__ lru_maintainer_thread; scalar_t__ temp_lru; } ;
struct TYPE_7__ {unsigned int time; } ;
typedef  int /*<<< orphan*/  (* ADD_STAT ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,int,char*,char*,unsigned long long) ; 
#define  COLD_LRU 131 
#define  HOT_LRU 130 
 int MAX_NUMBER_OF_SLAB_CLASSES ; 
 int STAT_KEY_LEN ; 
 int STAT_VAL_LEN ; 
#define  TEMP_LRU 129 
#define  WARM_LRU 128 
 unsigned int current_time ; 
 TYPE_5__* itemstats ; 
 int /*<<< orphan*/ * lru_locks ; 
 int* lru_type_map ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_3__ settings ; 
 unsigned int* sizes ; 
 scalar_t__* sizes_bytes ; 
 TYPE_2__** tails ; 
 int /*<<< orphan*/  FUNC4 (struct thread_stats*) ; 

void FUNC5(ADD_STAT add_stats, void *c) {
    struct thread_stats thread_stats;
    FUNC4(&thread_stats);
    itemstats_t totals;
    int n;
    for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        FUNC1(&totals, 0, sizeof(itemstats_t));
        int x;
        int i;
        unsigned int size = 0;
        unsigned int age  = 0;
        unsigned int age_hot = 0;
        unsigned int age_warm = 0;
        unsigned int lru_size_map[4];
        const char *fmt = "items:%d:%s";
        char key_str[STAT_KEY_LEN];
        char val_str[STAT_VAL_LEN];
        int klen = 0, vlen = 0;
        for (x = 0; x < 4; x++) {
            i = n | lru_type_map[x];
            FUNC2(&lru_locks[i]);
            totals.evicted += itemstats[i].evicted;
            totals.evicted_nonzero += itemstats[i].evicted_nonzero;
            totals.outofmemory += itemstats[i].outofmemory;
            totals.tailrepairs += itemstats[i].tailrepairs;
            totals.reclaimed += itemstats[i].reclaimed;
            totals.expired_unfetched += itemstats[i].expired_unfetched;
            totals.evicted_unfetched += itemstats[i].evicted_unfetched;
            totals.evicted_active += itemstats[i].evicted_active;
            totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
            totals.crawler_items_checked += itemstats[i].crawler_items_checked;
            totals.lrutail_reflocked += itemstats[i].lrutail_reflocked;
            totals.moves_to_cold += itemstats[i].moves_to_cold;
            totals.moves_to_warm += itemstats[i].moves_to_warm;
            totals.moves_within_lru += itemstats[i].moves_within_lru;
            totals.direct_reclaims += itemstats[i].direct_reclaims;
            totals.mem_requested += sizes_bytes[i];
            size += sizes[i];
            lru_size_map[x] = sizes[i];
            if (lru_type_map[x] == COLD_LRU && tails[i] != NULL) {
                age = current_time - tails[i]->time;
            } else if (lru_type_map[x] == HOT_LRU && tails[i] != NULL) {
                age_hot = current_time - tails[i]->time;
            } else if (lru_type_map[x] == WARM_LRU && tails[i] != NULL) {
                age_warm = current_time - tails[i]->time;
            }
            if (lru_type_map[x] == COLD_LRU)
                totals.evicted_time = itemstats[i].evicted_time;
            switch (lru_type_map[x]) {
                case HOT_LRU:
                    totals.hits_to_hot = thread_stats.lru_hits[i];
                    break;
                case WARM_LRU:
                    totals.hits_to_warm = thread_stats.lru_hits[i];
                    break;
                case COLD_LRU:
                    totals.hits_to_cold = thread_stats.lru_hits[i];
                    break;
                case TEMP_LRU:
                    totals.hits_to_temp = thread_stats.lru_hits[i];
                    break;
            }
            FUNC3(&lru_locks[i]);
        }
        if (size == 0)
            continue;
        FUNC0(fmt, n, "number", "%u", size);
        if (settings.lru_maintainer_thread) {
            FUNC0(fmt, n, "number_hot", "%u", lru_size_map[0]);
            FUNC0(fmt, n, "number_warm", "%u", lru_size_map[1]);
            FUNC0(fmt, n, "number_cold", "%u", lru_size_map[2]);
            if (settings.temp_lru) {
                FUNC0(fmt, n, "number_temp", "%u", lru_size_map[3]);
            }
            FUNC0(fmt, n, "age_hot", "%u", age_hot);
            FUNC0(fmt, n, "age_warm", "%u", age_warm);
        }
        FUNC0(fmt, n, "age", "%u", age);
        FUNC0(fmt, n, "mem_requested", "%llu", (unsigned long long)totals.mem_requested);
        FUNC0(fmt, n, "evicted",
                            "%llu", (unsigned long long)totals.evicted);
        FUNC0(fmt, n, "evicted_nonzero",
                            "%llu", (unsigned long long)totals.evicted_nonzero);
        FUNC0(fmt, n, "evicted_time",
                            "%u", totals.evicted_time);
        FUNC0(fmt, n, "outofmemory",
                            "%llu", (unsigned long long)totals.outofmemory);
        FUNC0(fmt, n, "tailrepairs",
                            "%llu", (unsigned long long)totals.tailrepairs);
        FUNC0(fmt, n, "reclaimed",
                            "%llu", (unsigned long long)totals.reclaimed);
        FUNC0(fmt, n, "expired_unfetched",
                            "%llu", (unsigned long long)totals.expired_unfetched);
        FUNC0(fmt, n, "evicted_unfetched",
                            "%llu", (unsigned long long)totals.evicted_unfetched);
        if (settings.lru_maintainer_thread) {
            FUNC0(fmt, n, "evicted_active",
                                "%llu", (unsigned long long)totals.evicted_active);
        }
        FUNC0(fmt, n, "crawler_reclaimed",
                            "%llu", (unsigned long long)totals.crawler_reclaimed);
        FUNC0(fmt, n, "crawler_items_checked",
                            "%llu", (unsigned long long)totals.crawler_items_checked);
        FUNC0(fmt, n, "lrutail_reflocked",
                            "%llu", (unsigned long long)totals.lrutail_reflocked);
        if (settings.lru_maintainer_thread) {
            FUNC0(fmt, n, "moves_to_cold",
                                "%llu", (unsigned long long)totals.moves_to_cold);
            FUNC0(fmt, n, "moves_to_warm",
                                "%llu", (unsigned long long)totals.moves_to_warm);
            FUNC0(fmt, n, "moves_within_lru",
                                "%llu", (unsigned long long)totals.moves_within_lru);
            FUNC0(fmt, n, "direct_reclaims",
                                "%llu", (unsigned long long)totals.direct_reclaims);
            FUNC0(fmt, n, "hits_to_hot",
                                "%llu", (unsigned long long)totals.hits_to_hot);

            FUNC0(fmt, n, "hits_to_warm",
                                "%llu", (unsigned long long)totals.hits_to_warm);

            FUNC0(fmt, n, "hits_to_cold",
                                "%llu", (unsigned long long)totals.hits_to_cold);

            FUNC0(fmt, n, "hits_to_temp",
                                "%llu", (unsigned long long)totals.hits_to_temp);

        }
    }

    /* getting here means both ascii and binary terminators fit */
    add_stats(NULL, 0, NULL, 0, c);
}