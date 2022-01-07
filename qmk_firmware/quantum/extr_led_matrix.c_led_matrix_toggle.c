
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int raw; } ;


 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_toggle(void) {
    led_matrix_config.enable ^= 1;
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
