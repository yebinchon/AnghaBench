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
typedef  int uint16_t ;
struct TYPE_4__ {int enable; int hue; } ;
struct TYPE_3__ {scalar_t__ rgb_matrix_idle_anim; scalar_t__ rgb_layer_change; } ;

/* Variables and functions */
 int /*<<< orphan*/  RGBLIGHT_MODE_STATIC_LIGHT ; 
 int /*<<< orphan*/  RGB_MATRIX_REST_MODE ; 
 int /*<<< orphan*/  layer_state ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_2__ rgblight_config ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 TYPE_1__ userspace_config ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

void FUNC8(void) {
#if defined(RGBLIGHT_ENABLE)
#   if defined(RGBLIGHT_STARTUP_ANIMATION)
    bool is_enabled = rgblight_config.enable;
    if (userspace_config.rgb_layer_change) {
        rgblight_enable_noeeprom();
    }
    if (rgblight_config.enable) {
        layer_state_set_user(layer_state);
        uint16_t old_hue = rgblight_config.hue;
        rgblight_mode_noeeprom(RGBLIGHT_MODE_STATIC_LIGHT);
        for (uint16_t i = 255; i > 0; i--) {
            rgblight_sethsv_noeeprom((i + old_hue) % 255, 255, 255);
            matrix_scan();
            wait_ms(10);
        }
    }
    if (!is_enabled) {
        rgblight_disable_noeeprom();
    }

#   endif
    layer_state_set_user(layer_state);
#endif
#if defined(RGB_MATRIX_ENABLE) && defined(RGB_MATRIX_FRAMEBUFFER_EFFECTS)
        if (userspace_config.rgb_matrix_idle_anim) {
            rgb_matrix_mode_noeeprom(RGB_MATRIX_REST_MODE);
        }
#endif
}