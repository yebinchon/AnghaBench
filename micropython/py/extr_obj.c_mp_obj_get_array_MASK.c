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
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,size_t*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  mp_type_list ; 
 int /*<<< orphan*/  mp_type_tuple ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(mp_obj_t o, size_t *len, mp_obj_t **items) {
    if (FUNC1(o, &mp_type_tuple)) {
        FUNC4(o, len, items);
    } else if (FUNC1(o, &mp_type_list)) {
        FUNC2(o, len, items);
    } else {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            FUNC5("expected tuple/list");
        } else {
            FUNC6(FUNC3(&mp_type_TypeError,
                "object '%s' isn't a tuple or list", FUNC0(o)));
        }
    }
}