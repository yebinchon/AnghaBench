
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int item ;


 scalar_t__ ITEM_get_cas (int *) ;
 int ITEM_ntotal (int *) ;
 int stats_sizes_buckets ;
 scalar_t__ stats_sizes_cas_min ;
 int * stats_sizes_hist ;

void item_stats_sizes_remove(item *it) {
    if (stats_sizes_hist == ((void*)0) || stats_sizes_cas_min > ITEM_get_cas(it))
        return;
    int ntotal = ITEM_ntotal(it);
    int bucket = ntotal / 32;
    if ((ntotal % 32) != 0) bucket++;
    if (bucket < stats_sizes_buckets) stats_sizes_hist[bucket]--;
}
