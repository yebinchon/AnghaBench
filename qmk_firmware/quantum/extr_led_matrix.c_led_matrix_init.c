
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {void* raw; int mode; } ;
struct TYPE_3__ {int (* init ) () ;} ;


 int LED_DRIVER_LED_COUNT ;
 int dprintf (char*) ;
 int eeconfig_debug_led_matrix () ;
 int eeconfig_init () ;
 int eeconfig_is_enabled () ;
 void* eeconfig_read_led_matrix () ;
 int eeconfig_update_led_matrix_default () ;
 int* g_key_hit ;
 TYPE_2__ led_matrix_config ;
 TYPE_1__ led_matrix_driver ;
 int stub1 () ;
 int wait_ms (int) ;

void led_matrix_init(void) {
    led_matrix_driver.init();


    wait_ms(500);


    for (int led = 0; led < LED_DRIVER_LED_COUNT; led++) {
        g_key_hit[led] = 255;
    }

    if (!eeconfig_is_enabled()) {
        dprintf("led_matrix_init_drivers eeconfig is not enabled.\n");
        eeconfig_init();
        eeconfig_update_led_matrix_default();
    }

    led_matrix_config.raw = eeconfig_read_led_matrix();

    if (!led_matrix_config.mode) {
        dprintf("led_matrix_init_drivers led_matrix_config.mode = 0. Write default values to EEPROM.\n");
        eeconfig_update_led_matrix_default();
        led_matrix_config.raw = eeconfig_read_led_matrix();
    }

    eeconfig_debug_led_matrix();
}
