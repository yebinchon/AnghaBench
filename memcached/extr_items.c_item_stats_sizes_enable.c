
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int use_cas; } ;
typedef int ADD_STAT ;


 int APPEND_STAT (char*,char*,char*) ;
 int item_stats_sizes_init () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 TYPE_1__ settings ;
 int * stats_sizes_hist ;
 int stats_sizes_lock ;

void item_stats_sizes_enable(ADD_STAT add_stats, void *c) {
    mutex_lock(&stats_sizes_lock);
    if (!settings.use_cas) {
        APPEND_STAT("sizes_status", "error", "");
        APPEND_STAT("sizes_error", "cas_support_disabled", "");
    } else if (stats_sizes_hist == ((void*)0)) {
        item_stats_sizes_init();
        if (stats_sizes_hist != ((void*)0)) {
            APPEND_STAT("sizes_status", "enabled", "");
        } else {
            APPEND_STAT("sizes_status", "error", "");
            APPEND_STAT("sizes_error", "no_memory", "");
        }
    } else {
        APPEND_STAT("sizes_status", "enabled", "");
    }
    mutex_unlock(&stats_sizes_lock);
}
