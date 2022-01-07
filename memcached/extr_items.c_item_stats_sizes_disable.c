
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ADD_STAT ;


 int APPEND_STAT (char*,char*,char*) ;
 int free (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int * stats_sizes_hist ;
 int stats_sizes_lock ;

void item_stats_sizes_disable(ADD_STAT add_stats, void *c) {
    mutex_lock(&stats_sizes_lock);
    if (stats_sizes_hist != ((void*)0)) {
        free(stats_sizes_hist);
        stats_sizes_hist = ((void*)0);
    }
    APPEND_STAT("sizes_status", "disabled", "");
    mutex_unlock(&stats_sizes_lock);
}
