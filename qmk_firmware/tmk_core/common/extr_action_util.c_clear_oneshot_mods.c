
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ oneshot_mods ;
 int oneshot_mods_changed_kb (scalar_t__) ;
 scalar_t__ oneshot_time ;

void clear_oneshot_mods(void) {
    if (oneshot_mods) {
        oneshot_mods = 0;



        oneshot_mods_changed_kb(oneshot_mods);
    }
}
