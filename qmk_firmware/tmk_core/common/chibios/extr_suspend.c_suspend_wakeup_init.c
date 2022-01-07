
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int backlight_init () ;
 int clear_keys () ;
 int clear_mods () ;
 int clear_weak_mods () ;
 int host_consumer_send (int ) ;
 int host_system_send (int ) ;
 int is_suspended ;
 int mousekey_clear () ;
 int rgblight_enable_noeeprom () ;
 scalar_t__ rgblight_enabled ;
 int rgblight_timer_enable () ;
 int suspend_wakeup_init_kb () ;

void suspend_wakeup_init(void) {






    clear_mods();
    clear_weak_mods();
    clear_keys();
    suspend_wakeup_init_kb();
}
