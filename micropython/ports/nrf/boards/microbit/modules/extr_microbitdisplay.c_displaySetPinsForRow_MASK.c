#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_3__ {int* pins_for_brightness; } ;
typedef  TYPE_1__ microbit_display_obj_t ;

/* Variables and functions */
 int COLUMN_PINS_MASK ; 
 int /*<<< orphan*/  NRF_GPIO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC2(microbit_display_obj_t * p_display, uint8_t brightness) {
    if (brightness == 0) {
        FUNC1(NRF_GPIO, COLUMN_PINS_MASK & ~p_display->pins_for_brightness[brightness]);
    } else {
        FUNC0(p_display->pins_for_brightness[brightness]);
    }
}