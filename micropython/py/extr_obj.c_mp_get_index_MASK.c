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
typedef  size_t mp_uint_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
typedef  size_t mp_int_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  mp_type_IndexError ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

size_t FUNC8(const mp_obj_type_t *type, size_t len, mp_obj_t index, bool is_slice) {
    mp_int_t i;
    if (FUNC3(index)) {
        i = FUNC0(index);
    } else if (!FUNC1(index, &i)) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC5("indices must be integers");
        } else {
            FUNC7(FUNC4(&mp_type_TypeError,
                "%q indices must be integers, not %s",
                type->name, FUNC2(index)));
        }
    }

    if (i < 0) {
        i += len;
    }
    if (is_slice) {
        if (i < 0) {
            i = 0;
        } else if ((mp_uint_t)i > len) {
            i = len;
        }
    } else {
        if (i < 0 || (mp_uint_t)i >= len) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC6(&mp_type_IndexError, "index out of range");
            } else {
                FUNC7(FUNC4(&mp_type_IndexError,
                    "%q index out of range", type->name));
            }
        }
    }

    // By this point 0 <= i <= len and so fits in a size_t
    return (size_t)i;
}