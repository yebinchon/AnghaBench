
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_8__ {void** tick; scalar_t__ count; } ;
struct TYPE_7__ {void** tick; scalar_t__ count; } ;
struct TYPE_6__ {int mode; } ;
struct TYPE_5__ {int (* init ) () ;} ;


 size_t LED_HITS_TO_REMEMBER ;
 void* UINT16_MAX ;
 int dprintf (char*) ;
 int eeconfig_debug_rgb_matrix () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 int eeconfig_read_rgb_matrix () ;
 int eeconfig_update_rgb_matrix_default () ;
 TYPE_4__ g_last_hit_tracker ;
 TYPE_3__ last_hit_buffer ;
 TYPE_2__ rgb_matrix_config ;
 TYPE_1__ rgb_matrix_driver ;
 int stub1 () ;

void rgb_matrix_init(void) {
    rgb_matrix_driver.init();
    if (!eeconfig_is_enabled()) {
        dprintf("rgb_matrix_init_drivers eeconfig is not enabled.\n");
        eeconfig_init();
        eeconfig_update_rgb_matrix_default();
    }

    eeconfig_read_rgb_matrix();
    if (!rgb_matrix_config.mode) {
        dprintf("rgb_matrix_init_drivers rgb_matrix_config.mode = 0. Write default values to EEPROM.\n");
        eeconfig_update_rgb_matrix_default();
    }
    eeconfig_debug_rgb_matrix();
}
