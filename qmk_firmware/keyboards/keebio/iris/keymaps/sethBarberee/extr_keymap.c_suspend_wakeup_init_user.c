
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; } ;


 TYPE_1__ backlight_config ;

void suspend_wakeup_init_user(void){
    backlight_config.enable = 1;
}
