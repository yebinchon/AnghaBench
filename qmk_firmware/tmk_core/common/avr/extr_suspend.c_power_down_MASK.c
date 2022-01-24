#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_2__ {int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 scalar_t__ DEVICE_STATE_Configured ; 
 int /*<<< orphan*/  SLEEP_MODE_PWR_DOWN ; 
 scalar_t__ USB_DeviceState ; 
 int USB_LED_CAPS_LOCK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int is_suspended ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  rgblight_enabled ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int wdt_timeout ; 

__attribute__((used)) static void FUNC13(uint8_t wdto) {
#    ifdef PROTOCOL_LUFA
    if (USB_DeviceState == DEVICE_STATE_Configured) return;
#    endif
    wdt_timeout = wdto;

    // Watchdog Interrupt Mode
    FUNC12(wdto);

#    ifdef BACKLIGHT_ENABLE
    backlight_set(0);
#    endif

    // Turn off LED indicators
    uint8_t leds_off = 0;
#    if defined(BACKLIGHT_CAPS_LOCK) && defined(BACKLIGHT_ENABLE)
    if (is_backlight_enabled()) {
        // Don't try to turn off Caps Lock indicator as it is backlight and backlight is already off
        leds_off |= (1 << USB_LED_CAPS_LOCK);
    }
#    endif
    FUNC2(leds_off);

#    ifdef AUDIO_ENABLE
    // This sometimes disables the start-up noise, so it's been disabled
    // stop_all_notes();
#    endif /* AUDIO_ENABLE */
#    if defined(RGBLIGHT_SLEEP) && defined(RGBLIGHT_ENABLE)
#        ifdef RGBLIGHT_ANIMATIONS
    rgblight_timer_disable();
#        endif
    if (!is_suspended) {
        is_suspended     = true;
        rgblight_enabled = rgblight_config.enable;
        rgblight_disable_noeeprom();
    }
#    endif
    FUNC10();

    // TODO: more power saving
    // See PicoPower application note
    // - I/O port input with pullup
    // - prescale clock
    // - BOD disable
    // - Power Reduction Register PRR
    FUNC6(SLEEP_MODE_PWR_DOWN);
    FUNC9();
    FUNC5();
    FUNC7();
    FUNC8();

    // Disable watchdog after sleep
    FUNC11();
}