
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int raw; } ;


 int LED_MATRIX_EFFECT_MAX ;
 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_step_reverse(void) {
    led_matrix_config.mode--;
    if (led_matrix_config.mode < 1) {
        led_matrix_config.mode = LED_MATRIX_EFFECT_MAX - 1;
    }
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
