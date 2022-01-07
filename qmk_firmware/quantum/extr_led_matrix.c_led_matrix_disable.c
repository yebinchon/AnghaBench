
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; scalar_t__ enable; } ;


 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_disable(void) {
    led_matrix_config.enable = 0;
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
