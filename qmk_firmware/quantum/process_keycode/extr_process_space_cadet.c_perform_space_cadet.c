
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef TYPE_2__ keyrecord_t ;


 scalar_t__ IS_MOD (scalar_t__) ;
 int MOD_BIT (scalar_t__) ;
 scalar_t__ TAPPING_TERM ;
 int clear_weak_mods () ;
 int get_mods () ;
 int register_mods (int ) ;
 scalar_t__ sc_last ;
 int sc_mods ;
 int sc_timer ;
 int set_weak_mods (int ) ;
 int tap_code (scalar_t__) ;
 scalar_t__ timer_elapsed (int ) ;
 int timer_read () ;
 int unregister_mods (int ) ;

void perform_space_cadet(keyrecord_t *record, uint8_t holdMod, uint8_t tapMod, uint8_t keycode) {
    if (record->event.pressed) {
        sc_last = holdMod;
        sc_timer = timer_read();



        if (IS_MOD(holdMod)) {
            register_mods(MOD_BIT(holdMod));
        }
    } else {
        if (sc_last == holdMod && timer_elapsed(sc_timer) < TAPPING_TERM) {
            if (holdMod != tapMod) {
                if (IS_MOD(holdMod)) {
                    unregister_mods(MOD_BIT(holdMod));
                }
                if (IS_MOD(tapMod)) {
                    register_mods(MOD_BIT(tapMod));
                }
            }



            tap_code(keycode);



            if (IS_MOD(tapMod)) {
                unregister_mods(MOD_BIT(tapMod));
            }
        } else {
            if (IS_MOD(holdMod)) {
                unregister_mods(MOD_BIT(holdMod));
            }
        }
    }
}
