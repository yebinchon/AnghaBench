
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int any_key_hit; } ;
struct TYPE_3__ {int mode; int enable; } ;




 int RGB_DISABLE_AFTER_TIMEOUT ;
 scalar_t__ RGB_DISABLE_WHEN_USB_SUSPENDED ;


 TYPE_2__ g_rgb_counters ;
 scalar_t__ g_suspend_state ;
 TYPE_1__ rgb_matrix_config ;
 int rgb_matrix_indicators () ;
 int rgb_task_flush (int ) ;
 int rgb_task_render (int ) ;
 int rgb_task_start () ;
 int rgb_task_state ;
 int rgb_task_sync () ;
 int rgb_task_timers () ;

void rgb_matrix_task(void) {
    rgb_task_timers();



    bool suspend_backlight = ((g_suspend_state && RGB_DISABLE_WHEN_USB_SUSPENDED) || (RGB_DISABLE_AFTER_TIMEOUT > 0 && g_rgb_counters.any_key_hit > RGB_DISABLE_AFTER_TIMEOUT * 60 * 20));
    uint8_t effect = suspend_backlight || !rgb_matrix_config.enable ? 0 : rgb_matrix_config.mode;

    switch (rgb_task_state) {
        case 129:
            rgb_task_start();
            break;
        case 130:
            rgb_task_render(effect);
            break;
        case 131:
            rgb_task_flush(effect);
            break;
        case 128:
            rgb_task_sync();
            break;
    }

    if (!suspend_backlight) {
        rgb_matrix_indicators();
    }
}
