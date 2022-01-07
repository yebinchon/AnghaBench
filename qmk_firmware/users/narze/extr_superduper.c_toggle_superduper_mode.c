
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_superduper_key_combos () ;
 int set_superduper_key_combos () ;
 int superduper_enabled ;

bool toggle_superduper_mode(void) {
    superduper_enabled = !superduper_enabled;

    if (superduper_enabled) {
        set_superduper_key_combos();
    } else {
        clear_superduper_key_combos();
    }

    return superduper_enabled;
}
