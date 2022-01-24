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
typedef  int uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  KC_LALT ; 
 int /*<<< orphan*/  KC_LCTL ; 
 int /*<<< orphan*/  KC_LSFT ; 
 int /*<<< orphan*/  KC_PPLS ; 
 int /*<<< orphan*/  KC_U ; 
#define  UC_MODE_LINUX 130 
#define  UC_MODE_OSX 129 
#define  UC_MODE_WIN 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int unicode_mode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(uint16_t hi, uint16_t lo) {
    switch (unicode_mode) {
    case UC_MODE_WIN:
        FUNC1(KC_LALT);

        FUNC1(KC_PPLS);
        FUNC2(KC_PPLS);

        FUNC1(FUNC0((hi & 0xF0) >> 4));
        FUNC2(FUNC0((hi & 0xF0) >> 4));
        FUNC1(FUNC0((hi & 0x0F)));
        FUNC2(FUNC0((hi & 0x0F)));
        FUNC1(FUNC0((lo & 0xF0) >> 4));
        FUNC2(FUNC0((lo & 0xF0) >> 4));
        FUNC1(FUNC0((lo & 0x0F)));
        FUNC2(FUNC0((lo & 0x0F)));

        FUNC2(KC_LALT);
        break;
    case UC_MODE_LINUX:
        FUNC1(KC_LCTL);
        FUNC1(KC_LSFT);

        FUNC1(KC_U);
        FUNC2(KC_U);

        FUNC1(FUNC0((hi & 0xF0) >> 4));
        FUNC2(FUNC0((hi & 0xF0) >> 4));
        FUNC1(FUNC0((hi & 0x0F)));
        FUNC2(FUNC0((hi & 0x0F)));
        FUNC1(FUNC0((lo & 0xF0) >> 4));
        FUNC2(FUNC0((lo & 0xF0) >> 4));
        FUNC1(FUNC0((lo & 0x0F)));
        FUNC2(FUNC0((lo & 0x0F)));

        FUNC2(KC_LCTL);
        FUNC2(KC_LSFT);
        break;
    case UC_MODE_OSX:
        break;
    }
}