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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  HSV_BLUE ; 
 int /*<<< orphan*/  HSV_CYAN ; 
 int /*<<< orphan*/  HSV_RED ; 
 int /*<<< orphan*/  HSV_SPRINGGREEN ; 
#define  _FLIGHT 130 
#define  _PANIC 129 
#define  _RCS 128 
 int base_mode ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int flight_mode ; 
 int panic_mode ; 
 int rcs_mode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

uint32_t FUNC2(uint32_t state) {
    base_mode = false;
    panic_mode = false;
    flight_mode = false;
    rcs_mode = false;

    switch (FUNC0(state)) {
    case _PANIC:
        panic_mode = true; // For use in encoder evaluation
        FUNC1(HSV_RED);
        break;
    case _FLIGHT:
        flight_mode = true; // For use in encoder evaluation
        FUNC1(HSV_CYAN);
        break;
    case _RCS:
        rcs_mode = true; // For use in encoder evaluation
        FUNC1(HSV_BLUE);
        break;
    default: //  for any other layers, or the default layer
        base_mode = true;
        FUNC1(HSV_SPRINGGREEN);
        break;
    }
    return state;
}