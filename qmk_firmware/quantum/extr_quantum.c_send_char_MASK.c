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
typedef  size_t uint8_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_RALT ; 
 int /*<<< orphan*/ * ascii_to_altgr_lut ; 
 int /*<<< orphan*/ * ascii_to_keycode_lut ; 
 int /*<<< orphan*/ * ascii_to_shift_lut ; 
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(char ascii_code) {
    uint8_t keycode    = FUNC0(&ascii_to_keycode_lut[(uint8_t)ascii_code]);
    bool    is_shifted = FUNC0(&ascii_to_shift_lut[(uint8_t)ascii_code]);
    bool    is_altgred = FUNC0(&ascii_to_altgr_lut[(uint8_t)ascii_code]);

    if (is_shifted) {
        FUNC1(KC_LSFT);
    }
    if (is_altgred) {
        FUNC1(KC_RALT);
    }
    FUNC2(keycode);
    if (is_altgred) {
        FUNC3(KC_RALT);
    }
    if (is_shifted) {
        FUNC3(KC_LSFT);
    }
}