
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; int val; int mode; int enable; } ;


 int dprintf (char*,...) ;
 TYPE_1__ led_matrix_config ;

void eeconfig_debug_led_matrix(void) {
    dprintf("led_matrix_config eeprom\n");
    dprintf("led_matrix_config.enable = %d\n", led_matrix_config.enable);
    dprintf("led_matrix_config.mode = %d\n", led_matrix_config.mode);
    dprintf("led_matrix_config.val = %d\n", led_matrix_config.val);
    dprintf("led_matrix_config.speed = %d\n", led_matrix_config.speed);
}
