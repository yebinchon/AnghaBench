
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; } ;


 int is_suspended ;
 TYPE_1__ rgblight_config ;
 int rgblight_disable_noeeprom () ;
 int rgblight_enabled ;
 int rgblight_timer_disable () ;
 int suspend_power_down_kb () ;
 int wait_ms (int) ;

void suspend_power_down(void) {
    suspend_power_down_kb();



    wait_ms(17);
}
