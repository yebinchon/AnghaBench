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

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,...) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(size_t n_args, size_t n_kw, uint32_t sig) {
    // TODO maybe take the function name as an argument so we can print nicer error messages

    // The reverse of MP_OBJ_FUN_MAKE_SIG
    bool takes_kw = sig & 1;
    size_t n_args_min = sig >> 17;
    size_t n_args_max = (sig >> 1) & 0xffff;

    if (n_kw && !takes_kw) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC0();
        } else {
            FUNC2("function doesn't take keyword arguments");
        }
    }

    if (n_args_min == n_args_max) {
        if (n_args != n_args_min) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC0();
            } else {
                FUNC3(FUNC1(&mp_type_TypeError,
                    "function takes %d positional arguments but %d were given",
                    n_args_min, n_args));
            }
        }
    } else {
        if (n_args < n_args_min) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC0();
            } else {
                FUNC3(FUNC1(&mp_type_TypeError,
                    "function missing %d required positional arguments",
                    n_args_min - n_args));
            }
        } else if (n_args > n_args_max) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC0();
            } else {
                FUNC3(FUNC1(&mp_type_TypeError,
                    "function expected at most %d arguments, got %d",
                    n_args_max, n_args));
            }
        }
    }
}