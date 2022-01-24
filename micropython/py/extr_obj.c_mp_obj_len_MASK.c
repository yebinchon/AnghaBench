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
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

mp_obj_t FUNC5(mp_obj_t o_in) {
    mp_obj_t len = FUNC1(o_in);
    if (len == MP_OBJ_NULL) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC3("object has no len");
        } else {
            FUNC4(FUNC2(&mp_type_TypeError,
                "object of type '%s' has no len()", FUNC0(o_in)));
        }
    } else {
        return len;
    }
}