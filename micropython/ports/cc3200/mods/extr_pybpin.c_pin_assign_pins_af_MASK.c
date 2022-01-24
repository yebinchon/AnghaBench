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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  pin_obj_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  PIN_STRENGTH_2MA ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int) ; 

void FUNC4 (mp_obj_t *pins, uint32_t n_pins, uint32_t pull, uint32_t fn, uint32_t unit) {
    for (int i = 0; i < n_pins; i++) {
        FUNC3(fn, unit, i);
        if (pins[i] != mp_const_none) {
            pin_obj_t *pin = FUNC1(pins[i]);
            FUNC0 (pin, FUNC2(pin, fn, unit, i), 0, pull, -1, PIN_STRENGTH_2MA);
        }
    }
}