#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/  map; } ;
typedef  TYPE_1__ mp_obj_dict_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
typedef  TYPE_2__ mp_map_elem_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_MAP_LOOKUP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_QSTR___import__ ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_const_none ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_module_builtins_override_dict ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC8(qstr name, mp_obj_t fromlist, mp_obj_t level) {
    FUNC0("import name '%s' level=%d\n", FUNC7(name), FUNC2(level));

    // build args array
    mp_obj_t args[5];
    args[0] = FUNC1(name);
    args[1] = mp_const_none; // TODO should be globals
    args[2] = mp_const_none; // TODO should be locals
    args[3] = fromlist;
    args[4] = level;

    #if MICROPY_CAN_OVERRIDE_BUILTINS
    // Lookup __import__ and call that if it exists
    mp_obj_dict_t *bo_dict = MP_STATE_VM(mp_module_builtins_override_dict);
    if (bo_dict != NULL) {
        mp_map_elem_t *import = mp_map_lookup(&bo_dict->map, MP_OBJ_NEW_QSTR(MP_QSTR___import__), MP_MAP_LOOKUP);
        if (import != NULL) {
            return mp_call_function_n_kw(import->value, 5, 0, args);
        }
    }
    #endif

    return FUNC4(5, args);
}