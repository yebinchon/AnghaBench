
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ total_items; } ;
struct TYPE_3__ {scalar_t__ curr_items; scalar_t__ curr_bytes; } ;
typedef int * ADD_STAT ;


 int APPEND_STAT (char*,char*,unsigned long long) ;
 int STATS_LOCK () ;
 int STATS_UNLOCK () ;
 unsigned long long global_page_pool_size (int *) ;
 int item_stats (int *,void*) ;
 int item_stats_sizes (int *,void*) ;
 int item_stats_sizes_disable (int *,void*) ;
 int item_stats_sizes_enable (int *,void*) ;
 int item_stats_totals (int *,void*) ;
 scalar_t__ nz_strcmp (int,char const*,char*) ;
 int slabs_stats (int *,void*) ;
 TYPE_2__ stats ;
 TYPE_1__ stats_state ;

__attribute__((used)) static bool get_stats(const char *stat_type, int nkey, ADD_STAT add_stats, void *c) {
    bool ret = 1;

    if (add_stats != ((void*)0)) {
        if (!stat_type) {

            STATS_LOCK();
            APPEND_STAT("bytes", "%llu", (unsigned long long)stats_state.curr_bytes);
            APPEND_STAT("curr_items", "%llu", (unsigned long long)stats_state.curr_items);
            APPEND_STAT("total_items", "%llu", (unsigned long long)stats.total_items);
            STATS_UNLOCK();
            APPEND_STAT("slab_global_page_pool", "%u", global_page_pool_size(((void*)0)));
            item_stats_totals(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "items") == 0) {
            item_stats(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "slabs") == 0) {
            slabs_stats(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "sizes") == 0) {
            item_stats_sizes(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "sizes_enable") == 0) {
            item_stats_sizes_enable(add_stats, c);
        } else if (nz_strcmp(nkey, stat_type, "sizes_disable") == 0) {
            item_stats_sizes_disable(add_stats, c);
        } else {
            ret = 0;
        }
    } else {
        ret = 0;
    }

    return ret;
}
