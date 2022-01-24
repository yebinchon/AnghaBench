#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  int /*<<< orphan*/  mp_map_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_1__ mp_map_elem_t ;
struct TYPE_9__ {int /*<<< orphan*/  map; } ;
struct TYPE_8__ {int /*<<< orphan*/  map; } ;
struct TYPE_7__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_4__* FUNC3 () ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__ mp_module_builtins_globals ; 
 int /*<<< orphan*/  mp_module_builtins_override_dict ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_NameError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC9(qstr qst) {
    // logic: search globals, builtins
    FUNC0("load global %s\n", FUNC8(qst));
    mp_map_elem_t *elem = FUNC4(&FUNC3()->map, FUNC1(qst), MP_MAP_LOOKUP);
    if (elem == NULL) {
        #if MICROPY_CAN_OVERRIDE_BUILTINS
        if (MP_STATE_VM(mp_module_builtins_override_dict) != NULL) {
            // lookup in additional dynamic table of builtins first
            elem = mp_map_lookup(&MP_STATE_VM(mp_module_builtins_override_dict)->map, MP_OBJ_NEW_QSTR(qst), MP_MAP_LOOKUP);
            if (elem != NULL) {
                return elem->value;
            }
        }
        #endif
        elem = FUNC4((mp_map_t*)&mp_module_builtins_globals.map, FUNC1(qst), MP_MAP_LOOKUP);
        if (elem == NULL) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC6(&mp_type_NameError, "name not defined");
            } else {
                FUNC7(FUNC5(&mp_type_NameError,
                    "name '%q' isn't defined", qst));
            }
        }
    }
    return elem->value;
}