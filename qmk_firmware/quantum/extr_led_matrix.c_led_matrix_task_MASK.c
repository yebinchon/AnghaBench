#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {int mode; int /*<<< orphan*/  enable; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* flush ) () ;} ;

/* Variables and functions */
 int LED_DISABLE_AFTER_TIMEOUT ; 
 scalar_t__ LED_DISABLE_WHEN_USB_SUSPENDED ; 
 int LED_DRIVER_LED_COUNT ; 
#define  LED_MATRIX_UNIFORM_BRIGHTNESS 128 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int g_any_key_hit ; 
 int* g_key_hit ; 
 scalar_t__ g_last_led_count ; 
 scalar_t__ g_suspend_state ; 
 int /*<<< orphan*/  g_tick ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_2__ led_matrix_config ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__ led_matrix_driver ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

void FUNC6(void) {
    if (!led_matrix_config.enable) {
        FUNC1();
        FUNC3();
        return;
    }

    g_tick++;

    if (g_any_key_hit < 0xFFFFFFFF) {
        g_any_key_hit++;
    }

    for (int led = 0; led < LED_DRIVER_LED_COUNT; led++) {
        if (g_key_hit[led] < 255) {
            if (g_key_hit[led] == 254) g_last_led_count = FUNC0(g_last_led_count - 1, 0);
            g_key_hit[led]++;
        }
    }

    // Ideally we would also stop sending zeros to the LED driver PWM buffers
    // while suspended and just do a software shutdown. This is a cheap hack for now.
    bool    suspend_backlight = ((g_suspend_state && LED_DISABLE_WHEN_USB_SUSPENDED) || (LED_DISABLE_AFTER_TIMEOUT > 0 && g_any_key_hit > LED_DISABLE_AFTER_TIMEOUT * 60 * 20));
    uint8_t effect            = suspend_backlight ? 0 : led_matrix_config.mode;

    // this gets ticked at 20 Hz.
    // each effect can opt to do calculations
    // and/or request PWM buffer updates.
    switch (effect) {
        case LED_MATRIX_UNIFORM_BRIGHTNESS:
            FUNC4();
            break;
        default:
            FUNC2();
            break;
    }

    if (!suspend_backlight) {
        FUNC3();
    }

    // Tell the LED driver to update its state
    led_matrix_driver.flush();
}