
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int raw; int val; } ;


 int LED_MATRIX_MAXIMUM_BRIGHTNESS ;
 int decrement (int ,int,int ,int ) ;
 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_decrease_val(void) {
    led_matrix_config.val = decrement(led_matrix_config.val, 8, 0, LED_MATRIX_MAXIMUM_BRIGHTNESS);
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
