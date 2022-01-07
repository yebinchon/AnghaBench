
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * stats_sizes_hist ;
 int stats_sizes_lock ;

bool item_stats_sizes_status(void) {
    bool ret = 0;
    mutex_lock(&stats_sizes_lock);
    if (stats_sizes_hist != ((void*)0))
        ret = 1;
    mutex_unlock(&stats_sizes_lock);
    return ret;
}
