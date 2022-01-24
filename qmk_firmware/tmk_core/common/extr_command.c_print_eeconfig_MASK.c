#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  nkro; int /*<<< orphan*/  swap_backslash_backspace; int /*<<< orphan*/  swap_grave_esc; int /*<<< orphan*/  no_gui; int /*<<< orphan*/  swap_ralt_rgui; int /*<<< orphan*/  swap_lalt_lgui; int /*<<< orphan*/  swap_rctl_rgui; int /*<<< orphan*/  swap_lctl_lgui; int /*<<< orphan*/  capslock_to_control; int /*<<< orphan*/  swap_control_capslock; int /*<<< orphan*/  raw; } ;
typedef  TYPE_1__ keymap_config_t ;
struct TYPE_5__ {int /*<<< orphan*/  mouse; int /*<<< orphan*/  keyboard; int /*<<< orphan*/  matrix; int /*<<< orphan*/  enable; int /*<<< orphan*/  raw; } ;
typedef  TYPE_2__ debug_config_t ;
struct TYPE_6__ {int /*<<< orphan*/  level; int /*<<< orphan*/  enable; int /*<<< orphan*/  raw; } ;
typedef  TYPE_3__ backlight_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(void) {
// Print these variables if NO_PRINT or USER_PRINT are not defined.
#if !defined(NO_PRINT) && !defined(USER_PRINT)

    FUNC4("default_layer: ");
    FUNC5(FUNC2());
    FUNC4("\n");

    debug_config_t dc;
    dc.raw = FUNC1();
    FUNC4("debug_config.raw: ");
    FUNC6(dc.raw);
    FUNC4("\n");
    FUNC4(".enable: ");
    FUNC5(dc.enable);
    FUNC4("\n");
    FUNC4(".matrix: ");
    FUNC5(dc.matrix);
    FUNC4("\n");
    FUNC4(".keyboard: ");
    FUNC5(dc.keyboard);
    FUNC4("\n");
    FUNC4(".mouse: ");
    FUNC5(dc.mouse);
    FUNC4("\n");

    keymap_config_t kc;
    kc.raw = FUNC3();
    FUNC4("keymap_config.raw: ");
    FUNC6(kc.raw);
    FUNC4("\n");
    FUNC4(".swap_control_capslock: ");
    FUNC5(kc.swap_control_capslock);
    FUNC4("\n");
    FUNC4(".capslock_to_control: ");
    FUNC5(kc.capslock_to_control);
    FUNC4("\n");
    FUNC4(".swap_lctl_lgui: ");
    FUNC5(kc.swap_lctl_lgui);
    FUNC4("\n");
    FUNC4(".swap_rctl_rgui: ");
    FUNC5(kc.swap_rctl_rgui);
    FUNC4("\n");
    FUNC4(".swap_lalt_lgui: ");
    FUNC5(kc.swap_lalt_lgui);
    FUNC4("\n");
    FUNC4(".swap_ralt_rgui: ");
    FUNC5(kc.swap_ralt_rgui);
    FUNC4("\n");
    FUNC4(".no_gui: ");
    FUNC5(kc.no_gui);
    FUNC4("\n");
    FUNC4(".swap_grave_esc: ");
    FUNC5(kc.swap_grave_esc);
    FUNC4("\n");
    FUNC4(".swap_backslash_backspace: ");
    FUNC5(kc.swap_backslash_backspace);
    FUNC4("\n");
    FUNC4(".nkro: ");
    FUNC5(kc.nkro);
    FUNC4("\n");

#    ifdef BACKLIGHT_ENABLE
    backlight_config_t bc;
    bc.raw = eeconfig_read_backlight();
    print("backlight_config.raw: ");
    print_hex8(bc.raw);
    print("\n");
    print(".enable: ");
    print_dec(bc.enable);
    print("\n");
    print(".level: ");
    print_dec(bc.level);
    print("\n");
#    endif /* BACKLIGHT_ENABLE */

#endif /* !NO_PRINT */
}