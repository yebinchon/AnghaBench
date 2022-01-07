
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int enable; int val; int raw; scalar_t__ speed; int mode; } ;


 int LED_MATRIX_UNIFORM_BRIGHTNESS ;
 int dprintf (char*) ;
 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void eeconfig_update_led_matrix_default(void) {
    dprintf("eeconfig_update_led_matrix_default\n");
    led_matrix_config.enable = 1;
    led_matrix_config.mode = LED_MATRIX_UNIFORM_BRIGHTNESS;
    led_matrix_config.val = 128;
    led_matrix_config.speed = 0;
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
