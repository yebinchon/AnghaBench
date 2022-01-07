
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rgb_matrix_enable; int raw; } ;


 int LED_FLAG_ALL ;
 int LED_FLAG_NONE ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_kb () ;
 TYPE_1__ keyboard_config ;
 int keyboard_pre_init_user () ;
 int led_initialize_hardware () ;
 int rgb_matrix_set_flags (int ) ;

void keyboard_pre_init_kb(void) {
    if (!eeconfig_is_enabled()) {
      eeconfig_init();
    }

    keyboard_config.raw = eeconfig_read_kb();







    led_initialize_hardware();
    keyboard_pre_init_user();
}
