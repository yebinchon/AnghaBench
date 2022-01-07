
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; int speed; } ;


 int decrement (int ,int,int ,int) ;
 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_decrease_speed(void) {
    led_matrix_config.speed = decrement(led_matrix_config.speed, 1, 0, 3);
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
