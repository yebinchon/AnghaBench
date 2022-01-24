#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct TYPE_4__ {scalar_t__ pressed; } ;
struct TYPE_5__ {TYPE_1__ event; } ;
typedef  TYPE_2__ keyrecord_t ;

/* Variables and functions */
 scalar_t__ QK_UNICODEMAP ; 
 scalar_t__ QK_UNICODEMAP_PAIR_MAX ; 
 scalar_t__ UC_OSX ; 
 scalar_t__ UC_WIN ; 
 scalar_t__ FUNC0 () ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ unicode_map ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

bool FUNC7(uint16_t keycode, keyrecord_t *record) {
    if (keycode >= QK_UNICODEMAP && keycode <= QK_UNICODEMAP_PAIR_MAX && record->event.pressed) {
        FUNC5();

        uint32_t code       = FUNC1(unicode_map + FUNC6(keycode));
        uint8_t  input_mode = FUNC0();

        if (code > 0x10FFFF || (code > 0xFFFF && input_mode == UC_WIN)) {
            // Character is out of range supported by the platform
            FUNC3();
        } else if (code > 0xFFFF && input_mode == UC_OSX) {
            // Convert to UTF-16 surrogate pair on Mac
            code -= 0x10000;
            uint32_t lo = code & 0x3FF, hi = (code & 0xFFC00) >> 10;
            FUNC2(hi + 0xD800);
            FUNC2(lo + 0xDC00);
            FUNC4();
        } else {
            FUNC2(code);
            FUNC4();
        }
    }
    return true;
}