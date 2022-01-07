
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ KC_ESC ;
 int clear_oneshot_locked_mods () ;
 int clear_oneshot_mods () ;
 int get_oneshot_locked_mods () ;
 int get_oneshot_mods () ;
 int has_oneshot_mods_timed_out () ;
 scalar_t__ is_oneshot_layer_active () ;
 int layer_clear () ;
 int unregister_mods (int ) ;

bool process_record_user(uint16_t keycode, keyrecord_t *record) {
    if (keycode == KC_ESC && record->event.pressed) {
        bool rc = 1;
        uint8_t mods = 0;
        if ((mods = get_oneshot_mods()) && !has_oneshot_mods_timed_out()) {
            clear_oneshot_mods();
            unregister_mods(mods);
            rc = 0;
        }
        if ((mods = get_oneshot_locked_mods())) {
            clear_oneshot_locked_mods();
            unregister_mods(mods);
            rc = 0;
        }
        if (is_oneshot_layer_active()) {
            layer_clear();
            rc = 0;
        }
        return rc;
    }
    return 1;
}
