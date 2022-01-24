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
typedef  int /*<<< orphan*/  pin_obj_t ;
typedef  int /*<<< orphan*/ * mp_obj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mpexception_value_invalid_arguments ; 
 int /*<<< orphan*/  pin_board_pins_locals_dict ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pin_type ; 

pin_obj_t *FUNC3(mp_obj_t user_obj) {
    pin_obj_t *pin_obj;

    // if a pin was provided, use it
    if (FUNC0(user_obj, &pin_type)) {
        pin_obj = user_obj;
        return pin_obj;
    }

    // otherwise see if the pin name matches a cpu pin
    pin_obj = FUNC2(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        return pin_obj;
    }

    FUNC1(mpexception_value_invalid_arguments);
}