
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; int val; } ;


 int LED_MATRIX_MAXIMUM_BRIGHTNESS ;
 int eeconfig_update_led_matrix (int ) ;
 int increment (int ,int,int ,int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_increase_val(void) {
    led_matrix_config.val = increment(led_matrix_config.val, 8, 0, LED_MATRIX_MAXIMUM_BRIGHTNESS);
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
