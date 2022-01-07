
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; } ;


 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;
 int led_matrix_set_value_noeeprom (int ) ;

void led_matrix_set_value(uint8_t val) {
    led_matrix_set_value_noeeprom(val);
    eeconfig_update_led_matrix(led_matrix_config.raw);
}
