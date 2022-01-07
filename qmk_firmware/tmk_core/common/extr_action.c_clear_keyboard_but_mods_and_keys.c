
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_macro_mods () ;
 int clear_weak_mods () ;
 int host_consumer_send (int ) ;
 int host_system_send (int ) ;
 int mousekey_clear () ;
 int mousekey_send () ;
 int send_keyboard_report () ;

void clear_keyboard_but_mods_and_keys() {
    clear_weak_mods();
    clear_macro_mods();
    send_keyboard_report();
}
