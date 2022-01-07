
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int val; } ;


 int BACKLIGHT_LEVELS ;
 int LED_MATRIX_MAXIMUM_BRIGHTNESS ;
 TYPE_1__ led_matrix_config ;
 int led_matrix_set_index_value_all (int) ;

void led_matrix_uniform_brightness(void) { led_matrix_set_index_value_all(LED_MATRIX_MAXIMUM_BRIGHTNESS / BACKLIGHT_LEVELS * led_matrix_config.val); }
