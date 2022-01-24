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
typedef  scalar_t__ qstr ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_2__ {scalar_t__ name; } ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 scalar_t__ const MP_QSTR_bytes ; 
 scalar_t__ const MP_QSTR_str ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__ const,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

void FUNC4(mp_obj_t self_in) {
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        FUNC2("can't convert to str implicitly");
    } else {
        const qstr src_name = FUNC0(self_in)->name;
        FUNC3(FUNC1(&mp_type_TypeError,
            "can't convert '%q' object to %q implicitly",
            src_name, src_name == MP_QSTR_str ? MP_QSTR_bytes : MP_QSTR_str));
    }
}