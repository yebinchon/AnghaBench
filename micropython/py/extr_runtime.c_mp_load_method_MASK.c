#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_AttributeError ; 
 int /*<<< orphan*/  mp_type_type ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(mp_obj_t base, qstr attr, mp_obj_t *dest) {
    FUNC0("load method %p.%s\n", base, FUNC8(attr));

    FUNC2(base, attr, dest);

    if (dest[0] == MP_OBJ_NULL) {
        // no attribute/method called attr
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC6(&mp_type_AttributeError, "no such attribute");
        } else {
            // following CPython, we give a more detailed error message for type objects
            if (FUNC4(base, &mp_type_type)) {
                FUNC7(FUNC5(&mp_type_AttributeError,
                    "type object '%q' has no attribute '%q'",
                    ((mp_obj_type_t*)FUNC1(base))->name, attr));
            } else {
                FUNC7(FUNC5(&mp_type_AttributeError,
                    "'%s' object has no attribute '%q'",
                    FUNC3(base), attr));
            }
        }
    }
}