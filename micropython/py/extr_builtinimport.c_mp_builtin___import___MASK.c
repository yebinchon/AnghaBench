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
typedef  int /*<<< orphan*/  qstr ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ FUNC0 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_ImportError ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC10(size_t n_args, const mp_obj_t *args) {
    // Check that it's not a relative import
    if (n_args >= 5 && FUNC0(args[4]) != 0) {
        FUNC6("relative import");
    }

    // Check if module already exists, and return it if it does
    qstr module_name_qstr = FUNC5(args[0]);
    mp_obj_t module_obj = FUNC2(module_name_qstr);
    if (module_obj != MP_OBJ_NULL) {
        return module_obj;
    }

    #if MICROPY_MODULE_WEAK_LINKS
    // Check if there is a weak link to this module
    module_obj = mp_module_search_umodule(qstr_str(module_name_qstr));
    if (module_obj != MP_OBJ_NULL) {
        // Found weak-linked module
        mp_module_call_init(module_name_qstr, module_obj);
        return module_obj;
    }
    #endif

    // Couldn't find the module, so fail
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        FUNC7(&mp_type_ImportError, "module not found");
    } else {
        FUNC8(FUNC4(&mp_type_ImportError,
            "no module named '%q'", module_name_qstr));
    }
}