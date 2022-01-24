#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
struct TYPE_7__ {scalar_t__ (* iternext ) (scalar_t__) ;} ;
typedef  TYPE_2__ mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;
struct TYPE_8__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_3__ mp_obj_base_t ;

/* Variables and functions */
 scalar_t__ MICROPY_ERROR_REPORTING ; 
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__ MP_OBJ_STOP_ITERATION ; 
 int /*<<< orphan*/  MP_QSTR___next__ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 TYPE_2__* FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  mp_type_StopIteration ; 
 int /*<<< orphan*/  mp_type_TypeError ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

mp_obj_t FUNC14(mp_obj_t o_in) {
    FUNC1(); // enumerate, filter, map and zip can recursively call mp_iternext
    mp_obj_type_t *type = FUNC4(o_in);
    if (type->iternext != NULL) {
        return type->iternext(o_in);
    } else {
        // check for __next__ method
        mp_obj_t dest[2];
        FUNC3(o_in, MP_QSTR___next__, dest);
        if (dest[0] != MP_OBJ_NULL) {
            // __next__ exists, call it and return its result
            nlr_buf_t nlr;
            if (FUNC11(&nlr) == 0) {
                mp_obj_t ret = FUNC2(0, 0, dest);
                FUNC10();
                return ret;
            } else {
                if (FUNC6(FUNC0(((mp_obj_base_t*)nlr.ret_val)->type), FUNC0(&mp_type_StopIteration))) {
                    return MP_OBJ_STOP_ITERATION;
                } else {
                    FUNC9(nlr.ret_val);
                }
            }
        } else {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                FUNC8("object not an iterator");
            } else {
                FUNC12(FUNC7(&mp_type_TypeError,
                    "'%s' object isn't an iterator", FUNC5(o_in)));
            }
        }
    }
}