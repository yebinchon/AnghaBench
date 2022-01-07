
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int mods; } ;


 int clear_oneshot_mods () ;
 int dprintf (char*) ;
 scalar_t__ has_anykey (TYPE_1__*) ;
 scalar_t__ has_oneshot_mods_timed_out () ;
 int host_keyboard_send (TYPE_1__*) ;
 TYPE_1__* keyboard_report ;
 int macro_mods ;
 int oneshot_mods ;
 int real_mods ;
 int weak_mods ;

void send_keyboard_report(void) {
    keyboard_report->mods = real_mods;
    keyboard_report->mods |= weak_mods;
    keyboard_report->mods |= macro_mods;

    if (oneshot_mods) {






        keyboard_report->mods |= oneshot_mods;
        if (has_anykey(keyboard_report)) {
            clear_oneshot_mods();
        }
    }


    host_keyboard_send(keyboard_report);
}
