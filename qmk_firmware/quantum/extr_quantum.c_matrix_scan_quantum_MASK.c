#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 

void FUNC10() {
#if defined(AUDIO_ENABLE) && !defined(NO_MUSIC_MODE)
    matrix_scan_music();
#endif

#ifdef TAP_DANCE_ENABLE
    matrix_scan_tap_dance();
#endif

#ifdef COMBO_ENABLE
    matrix_scan_combo();
#endif

#if defined(BACKLIGHT_ENABLE)
#    if defined(LED_MATRIX_ENABLE)
    led_matrix_task();
#    elif defined(BACKLIGHT_PIN) || defined(BACKLIGHT_PINS)
    backlight_task();
#    endif
#endif

#ifdef RGB_MATRIX_ENABLE
    rgb_matrix_task();
#endif

#ifdef ENCODER_ENABLE
    encoder_read();
#endif

#ifdef HAPTIC_ENABLE
    haptic_task();
#endif

#ifdef DIP_SWITCH_ENABLE
    dip_switch_read(false);
#endif

    FUNC6();
}