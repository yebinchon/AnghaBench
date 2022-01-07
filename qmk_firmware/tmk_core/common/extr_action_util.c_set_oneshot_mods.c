
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;


 scalar_t__ oneshot_mods ;
 int oneshot_mods_changed_kb (scalar_t__) ;
 int oneshot_time ;
 int timer_read () ;

void set_oneshot_mods(uint8_t mods) {
    if (oneshot_mods != mods) {



        oneshot_mods = mods;
        oneshot_mods_changed_kb(mods);
    }
}
