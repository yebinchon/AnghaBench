
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_keyboard_but_mods_and_keys () ;
 int clear_keys () ;

void clear_keyboard_but_mods(void) {
    clear_keys();
    clear_keyboard_but_mods_and_keys();
}
