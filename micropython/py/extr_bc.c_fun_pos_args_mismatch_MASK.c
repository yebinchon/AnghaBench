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
typedef  int /*<<< orphan*/  mp_obj_fun_bc_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,size_t,size_t,...) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

void FUNC5(mp_obj_fun_bc_t *f, size_t expected, size_t given) {
#if MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE
    // generic message, used also for other argument issues
    (void)f;
    (void)expected;
    (void)given;
    FUNC1();
#elif MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_NORMAL
    (void)f;
    nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
        "function takes %d positional arguments but %d were given", expected, given));
#elif MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_DETAILED
    nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
        "%q() takes %d positional arguments but %d were given",
        mp_obj_fun_get_name(MP_OBJ_FROM_PTR(f)), expected, given));
#endif
}