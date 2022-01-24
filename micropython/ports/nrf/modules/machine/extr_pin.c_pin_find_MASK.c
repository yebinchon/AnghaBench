#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint8_t ;
struct TYPE_21__ {size_t pin; } ;
typedef  TYPE_1__ pin_obj_t ;
typedef  TYPE_1__ const* mp_obj_t ;
typedef  int /*<<< orphan*/  mp_map_t ;
struct TYPE_22__ {TYPE_1__* value; } ;
typedef  TYPE_3__ mp_map_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 size_t FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__ const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_REPR ; 
 int /*<<< orphan*/  PRINT_STR ; 
 TYPE_1__ const* machine_board_pin_obj ; 
 size_t machine_pin_num_of_board_pins ; 
 TYPE_1__* FUNC2 (TYPE_1__ const*,TYPE_1__ const*) ; 
 TYPE_1__ const* mp_const_none ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__ const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pin_board_pins_locals_dict ; 
 scalar_t__ pin_class_debug ; 
 int /*<<< orphan*/  pin_class_map_dict ; 
 int /*<<< orphan*/  pin_class_mapper ; 
 int /*<<< orphan*/  pin_cpu_pins_locals_dict ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,TYPE_1__ const*) ; 
 int /*<<< orphan*/  pin_type ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

const pin_obj_t *FUNC11(mp_obj_t user_obj) {
    const pin_obj_t *pin_obj;
    // If pin is SMALL_INT
    if (FUNC5(user_obj)) {
        uint8_t value = FUNC0(user_obj);
        for (uint8_t i = 0; i < machine_pin_num_of_board_pins; i++) {
            if (machine_board_pin_obj[i].pin == value) {
                return &machine_board_pin_obj[i];
            }
        }
    }

    // If a pin was provided, then use it
    if (FUNC6(user_obj, &pin_type)) {
        pin_obj = user_obj;
        if (pin_class_debug) {
            FUNC10("Pin map passed pin ");
            FUNC7((mp_obj_t)pin_obj, PRINT_STR);
            FUNC10("\n");
        }
        return pin_obj;
    }

    if (FUNC1(pin_class_mapper) != mp_const_none) {
        pin_obj = FUNC2(FUNC1(pin_class_mapper), user_obj);
        if (pin_obj != mp_const_none) {
            if (!FUNC6(pin_obj, &pin_type)) {
                FUNC8("Pin.mapper didn't return a Pin object");
            }
            if (pin_class_debug) {
                FUNC10("Pin.mapper maps ");
                FUNC7(user_obj, PRINT_REPR);
                FUNC10(" to ");
                FUNC7((mp_obj_t)pin_obj, PRINT_STR);
                FUNC10("\n");
            }
            return pin_obj;
        }
        // The pin mapping function returned mp_const_none, fall through to
        // other lookup methods.
    }

    if (FUNC1(pin_class_map_dict) != mp_const_none) {
        mp_map_t *pin_map_map = FUNC4(FUNC1(pin_class_map_dict));
        mp_map_elem_t *elem = FUNC3(pin_map_map, user_obj, MP_MAP_LOOKUP);
        if (elem != NULL && elem->value != NULL) {
            pin_obj = elem->value;
            if (pin_class_debug) {
                FUNC10("Pin.map_dict maps ");
                FUNC7(user_obj, PRINT_REPR);
                FUNC10(" to ");
                FUNC7((mp_obj_t)pin_obj, PRINT_STR);
                FUNC10("\n");
            }
            return pin_obj;
        }
    }

    // See if the pin name matches a board pin
    pin_obj = FUNC9(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            FUNC10("Pin.board maps ");
            FUNC7(user_obj, PRINT_REPR);
            FUNC10(" to ");
            FUNC7((mp_obj_t)pin_obj, PRINT_STR);
            FUNC10("\n");
        }
        return pin_obj;
    }

    // See if the pin name matches a cpu pin
    pin_obj = FUNC9(&pin_cpu_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            FUNC10("Pin.cpu maps ");
            FUNC7(user_obj, PRINT_REPR);
            FUNC10(" to ");
            FUNC7((mp_obj_t)pin_obj, PRINT_STR);
            FUNC10("\n");
        }
        return pin_obj;
    }

    FUNC8("not a valid pin identifier");
}