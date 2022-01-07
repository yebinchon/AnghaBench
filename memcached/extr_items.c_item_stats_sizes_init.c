
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int item_size_max; scalar_t__ use_cas; } ;


 int * calloc (int,int) ;
 int get_cas_id () ;
 TYPE_1__ settings ;
 int stats_sizes_buckets ;
 int stats_sizes_cas_min ;
 int * stats_sizes_hist ;

void item_stats_sizes_init(void) {
    if (stats_sizes_hist != ((void*)0))
        return;
    stats_sizes_buckets = settings.item_size_max / 32 + 1;
    stats_sizes_hist = calloc(stats_sizes_buckets, sizeof(int));
    stats_sizes_cas_min = (settings.use_cas) ? get_cas_id() : 0;
}
