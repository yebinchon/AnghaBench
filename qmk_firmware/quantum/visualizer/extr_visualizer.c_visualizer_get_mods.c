
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int get_mods () ;
 int get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;

uint8_t visualizer_get_mods() {
    uint8_t mods = get_mods();


    if (!has_oneshot_mods_timed_out()) {
        mods |= get_oneshot_mods();
    }

    return mods;
}
