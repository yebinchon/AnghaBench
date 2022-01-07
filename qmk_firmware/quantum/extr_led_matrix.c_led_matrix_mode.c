
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int raw; int mode; } ;


 int eeconfig_update_led_matrix (int ) ;
 TYPE_1__ led_matrix_config ;

void led_matrix_mode(uint8_t mode, bool eeprom_write) {
    led_matrix_config.mode = mode;
    if (eeprom_write) {
        eeconfig_update_led_matrix(led_matrix_config.raw);
    }
}
