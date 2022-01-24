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
typedef  int /*<<< orphan*/  pin_obj_t ;
typedef  scalar_t__ mp_obj_t ;
typedef  int /*<<< orphan*/  mp_map_t ;
struct TYPE_3__ {scalar_t__ value; } ;
typedef  TYPE_1__ mp_map_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*) ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  const* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRINT_REPR ; 
 int /*<<< orphan*/  PRINT_STR ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 
 scalar_t__ mp_const_none ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  mp_type_ValueError ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pin_board_pins_locals_dict ; 
 scalar_t__ pin_class_debug ; 
 int /*<<< orphan*/  pin_class_map_dict ; 
 int /*<<< orphan*/  pin_class_mapper ; 
 int /*<<< orphan*/  pin_cpu_pins_locals_dict ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  pin_type ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

const pin_obj_t *FUNC14(mp_obj_t user_obj) {
    const pin_obj_t *pin_obj;

    // If a pin was provided, then use it
    if (FUNC6(user_obj, &pin_type)) {
        pin_obj = FUNC1(user_obj);
        if (pin_class_debug) {
            FUNC13("Pin map passed pin ");
            FUNC8(FUNC0(pin_obj), PRINT_STR);
            FUNC13("\n");
        }
        return pin_obj;
    }

    if (FUNC2(pin_class_mapper) != mp_const_none) {
        mp_obj_t o = FUNC3(FUNC2(pin_class_mapper), user_obj);
        if (o != mp_const_none) {
            if (!FUNC6(o, &pin_type)) {
                FUNC10("Pin.mapper didn't return a Pin object");
            }
            if (pin_class_debug) {
                FUNC13("Pin.mapper maps ");
                FUNC8(user_obj, PRINT_REPR);
                FUNC13(" to ");
                FUNC8(o, PRINT_STR);
                FUNC13("\n");
            }
            return FUNC1(o);
        }
        // The pin mapping function returned mp_const_none, fall through to
        // other lookup methods.
    }

    if (FUNC2(pin_class_map_dict) != mp_const_none) {
        mp_map_t *pin_map_map = FUNC5(FUNC2(pin_class_map_dict));
        mp_map_elem_t *elem = FUNC4(pin_map_map, user_obj, MP_MAP_LOOKUP);
        if (elem != NULL && elem->value != MP_OBJ_NULL) {
            mp_obj_t o = elem->value;
            if (pin_class_debug) {
                FUNC13("Pin.map_dict maps ");
                FUNC8(user_obj, PRINT_REPR);
                FUNC13(" to ");
                FUNC8(o, PRINT_STR);
                FUNC13("\n");
            }
            return FUNC1(o);
        }
    }

    // See if the pin name matches a board pin
    pin_obj = FUNC12(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            FUNC13("Pin.board maps ");
            FUNC8(user_obj, PRINT_REPR);
            FUNC13(" to ");
            FUNC8(FUNC0(pin_obj), PRINT_STR);
            FUNC13("\n");
        }
        return pin_obj;
    }

    // See if the pin name matches a cpu pin
    pin_obj = FUNC12(&pin_cpu_pins_locals_dict, user_obj);
    if (pin_obj) {
        if (pin_class_debug) {
            FUNC13("Pin.cpu maps ");
            FUNC8(user_obj, PRINT_REPR);
            FUNC13(" to ");
            FUNC8(FUNC0(pin_obj), PRINT_STR);
            FUNC13("\n");
        }
        return pin_obj;
    }

    FUNC11(FUNC7(&mp_type_ValueError, "Pin(%s) doesn't exist", FUNC9(user_obj)));
}