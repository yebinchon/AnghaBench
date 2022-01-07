
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rgb_matrix_enable; int led_level; scalar_t__ raw; } ;


 int eeconfig_init_user () ;
 int eeconfig_update_kb (scalar_t__) ;
 TYPE_1__ keyboard_config ;

void eeconfig_init_kb(void) {
    keyboard_config.raw = 0;
    keyboard_config.rgb_matrix_enable = 1;
    keyboard_config.led_level = 4;
    eeconfig_update_kb(keyboard_config.raw);
    eeconfig_init_user();
}
