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
struct TYPE_2__ {int input_mode; } ;

/* Variables and functions */
 int /*<<< orphan*/  KC_ESC ; 
 int /*<<< orphan*/  KC_LALT ; 
#define  UC_LNX 131 
#define  UC_OSX 130 
#define  UC_WIN 129 
#define  UC_WINC 128 
 int /*<<< orphan*/  UNICODE_KEY_OSX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ unicode_config ; 
 int /*<<< orphan*/  unicode_saved_mods ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((weak)) void FUNC3(void) {
    switch (unicode_config.input_mode) {
        case UC_OSX:
            FUNC2(UNICODE_KEY_OSX);
            break;
        case UC_LNX:
        case UC_WINC:
            FUNC1(KC_ESC);
            break;
        case UC_WIN:
            FUNC2(KC_LALT);
            break;
    }

    FUNC0(unicode_saved_mods);  // Reregister previously set mods
}