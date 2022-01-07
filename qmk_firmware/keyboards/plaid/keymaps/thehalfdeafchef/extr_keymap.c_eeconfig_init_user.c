
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ raw; void* green_mode; void* red_mode; } ;


 void* LED_ON ;
 int eeconfig_update_user (scalar_t__) ;
 TYPE_1__ led_config ;

void eeconfig_init_user(void) {
    led_config.raw = 0;
    led_config.red_mode = LED_ON;
    led_config.green_mode = LED_ON;
    eeconfig_update_user(led_config.raw);
    eeconfig_update_user(led_config.raw);
}
