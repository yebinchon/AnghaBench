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
 int /*<<< orphan*/  OUTPUT_AUTO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13() {
#ifdef BOOTMAGIC_LITE
    bootmagic_lite();
#endif
    if (!FUNC5()) {
        FUNC4();
    }
#ifdef BACKLIGHT_ENABLE
#    ifdef LED_MATRIX_ENABLE
    led_matrix_init();
#    else
    backlight_init_ports();
#    endif
#endif
#ifdef AUDIO_ENABLE
    audio_init();
#endif
#ifdef RGB_MATRIX_ENABLE
    rgb_matrix_init();
#endif
#ifdef ENCODER_ENABLE
    encoder_init();
#endif
#if defined(UNICODE_ENABLE) || defined(UNICODEMAP_ENABLE) || defined(UCIS_ENABLE)
    unicode_input_mode_init();
#endif
#ifdef HAPTIC_ENABLE
    haptic_init();
#endif
#ifdef OUTPUT_AUTO_ENABLE
    set_output(OUTPUT_AUTO);
#endif
#ifdef DIP_SWITCH_ENABLE
    dip_switch_init();
#endif

    FUNC9();
}