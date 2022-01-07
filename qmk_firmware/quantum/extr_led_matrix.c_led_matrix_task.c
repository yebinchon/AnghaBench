
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int mode; int enable; } ;
struct TYPE_3__ {int (* flush ) () ;} ;


 int LED_DISABLE_AFTER_TIMEOUT ;
 scalar_t__ LED_DISABLE_WHEN_USB_SUSPENDED ;
 int LED_DRIVER_LED_COUNT ;

 scalar_t__ MAX (scalar_t__,int ) ;
 int g_any_key_hit ;
 int* g_key_hit ;
 scalar_t__ g_last_led_count ;
 scalar_t__ g_suspend_state ;
 int g_tick ;
 int led_matrix_all_off () ;
 TYPE_2__ led_matrix_config ;
 int led_matrix_custom () ;
 TYPE_1__ led_matrix_driver ;
 int led_matrix_indicators () ;
 int led_matrix_uniform_brightness () ;
 int stub1 () ;

void led_matrix_task(void) {
    if (!led_matrix_config.enable) {
        led_matrix_all_off();
        led_matrix_indicators();
        return;
    }

    g_tick++;

    if (g_any_key_hit < 0xFFFFFFFF) {
        g_any_key_hit++;
    }

    for (int led = 0; led < LED_DRIVER_LED_COUNT; led++) {
        if (g_key_hit[led] < 255) {
            if (g_key_hit[led] == 254) g_last_led_count = MAX(g_last_led_count - 1, 0);
            g_key_hit[led]++;
        }
    }



    bool suspend_backlight = ((g_suspend_state && LED_DISABLE_WHEN_USB_SUSPENDED) || (LED_DISABLE_AFTER_TIMEOUT > 0 && g_any_key_hit > LED_DISABLE_AFTER_TIMEOUT * 60 * 20));
    uint8_t effect = suspend_backlight ? 0 : led_matrix_config.mode;




    switch (effect) {
        case 128:
            led_matrix_uniform_brightness();
            break;
        default:
            led_matrix_custom();
            break;
    }

    if (!suspend_backlight) {
        led_matrix_indicators();
    }


    led_matrix_driver.flush();
}
