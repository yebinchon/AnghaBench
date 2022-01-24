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
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_3__ {int /*<<< orphan*/  (* attr ) (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ;} ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ MP_OBJ_SENTINEL ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_AttributeError ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

void FUNC8(mp_obj_t base, qstr attr, mp_obj_t value) {
    FUNC0("store attr %p.%s <- %p\n", base, FUNC6(attr), value);
    mp_obj_type_t *type = FUNC1(base);
    if (type->attr != NULL) {
        mp_obj_t dest[2] = {MP_OBJ_SENTINEL, value};
        type->attr(base, attr, dest);
        if (dest[0] == MP_OBJ_NULL) {
            // success
            return;
        }
    }
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        FUNC4(&mp_type_AttributeError, "no such attribute");
    } else {
        FUNC5(FUNC3(&mp_type_AttributeError,
            "'%s' object has no attribute '%q'",
            FUNC2(base), attr));
    }
}