#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ direct_reclaims; scalar_t__ moves_within_lru; scalar_t__ moves_to_warm; scalar_t__ moves_to_cold; scalar_t__ lrutail_reflocked; scalar_t__ crawler_items_checked; scalar_t__ crawler_reclaimed; scalar_t__ reclaimed; scalar_t__ evicted; scalar_t__ evicted_active; scalar_t__ evicted_unfetched; scalar_t__ expired_unfetched; } ;
typedef  TYPE_1__ itemstats_t ;
struct TYPE_7__ {scalar_t__ direct_reclaims; scalar_t__ moves_within_lru; scalar_t__ moves_to_warm; scalar_t__ moves_to_cold; scalar_t__ lrutail_reflocked; scalar_t__ crawler_items_checked; scalar_t__ crawler_reclaimed; scalar_t__ reclaimed; scalar_t__ evicted; scalar_t__ evicted_active; scalar_t__ evicted_unfetched; scalar_t__ expired_unfetched; } ;
struct TYPE_6__ {scalar_t__ lru_maintainer_thread; } ;
typedef  int /*<<< orphan*/  ADD_STAT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned long long) ; 
 int MAX_NUMBER_OF_SLAB_CLASSES ; 
 TYPE_4__* itemstats ; 
 int /*<<< orphan*/ * lru_locks ; 
 scalar_t__ FUNC1 () ; 
 int* lru_type_map ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_2__ settings ; 

void FUNC5(ADD_STAT add_stats, void *c) {
    itemstats_t totals;
    FUNC2(&totals, 0, sizeof(itemstats_t));
    int n;
    for (n = 0; n < MAX_NUMBER_OF_SLAB_CLASSES; n++) {
        int x;
        int i;
        for (x = 0; x < 4; x++) {
            i = n | lru_type_map[x];
            FUNC3(&lru_locks[i]);
            totals.expired_unfetched += itemstats[i].expired_unfetched;
            totals.evicted_unfetched += itemstats[i].evicted_unfetched;
            totals.evicted_active += itemstats[i].evicted_active;
            totals.evicted += itemstats[i].evicted;
            totals.reclaimed += itemstats[i].reclaimed;
            totals.crawler_reclaimed += itemstats[i].crawler_reclaimed;
            totals.crawler_items_checked += itemstats[i].crawler_items_checked;
            totals.lrutail_reflocked += itemstats[i].lrutail_reflocked;
            totals.moves_to_cold += itemstats[i].moves_to_cold;
            totals.moves_to_warm += itemstats[i].moves_to_warm;
            totals.moves_within_lru += itemstats[i].moves_within_lru;
            totals.direct_reclaims += itemstats[i].direct_reclaims;
            FUNC4(&lru_locks[i]);
        }
    }
    FUNC0("expired_unfetched", "%llu",
                (unsigned long long)totals.expired_unfetched);
    FUNC0("evicted_unfetched", "%llu",
                (unsigned long long)totals.evicted_unfetched);
    if (settings.lru_maintainer_thread) {
        FUNC0("evicted_active", "%llu",
                    (unsigned long long)totals.evicted_active);
    }
    FUNC0("evictions", "%llu",
                (unsigned long long)totals.evicted);
    FUNC0("reclaimed", "%llu",
                (unsigned long long)totals.reclaimed);
    FUNC0("crawler_reclaimed", "%llu",
                (unsigned long long)totals.crawler_reclaimed);
    FUNC0("crawler_items_checked", "%llu",
                (unsigned long long)totals.crawler_items_checked);
    FUNC0("lrutail_reflocked", "%llu",
                (unsigned long long)totals.lrutail_reflocked);
    if (settings.lru_maintainer_thread) {
        FUNC0("moves_to_cold", "%llu",
                    (unsigned long long)totals.moves_to_cold);
        FUNC0("moves_to_warm", "%llu",
                    (unsigned long long)totals.moves_to_warm);
        FUNC0("moves_within_lru", "%llu",
                    (unsigned long long)totals.moves_within_lru);
        FUNC0("direct_reclaims", "%llu",
                    (unsigned long long)totals.direct_reclaims);
        FUNC0("lru_bumps_dropped", "%llu",
                    (unsigned long long)FUNC1());
    }
}