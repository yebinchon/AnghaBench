
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_keyboard_but_mods () ;
 int clear_mods () ;

void clear_keyboard(void) {
    clear_mods();
    clear_keyboard_but_mods();
}
