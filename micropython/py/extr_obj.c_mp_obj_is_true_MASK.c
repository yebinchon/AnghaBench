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
struct TYPE_3__ {scalar_t__ (* unary_op ) (int /*<<< orphan*/ ,scalar_t__) ;} ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MP_OBJ_NULL ; 
 int /*<<< orphan*/  MP_UNARY_OP_BOOL ; 
 scalar_t__ mp_const_false ; 
 scalar_t__ mp_const_none ; 
 scalar_t__ mp_const_true ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

bool FUNC5(mp_obj_t arg) {
    if (arg == mp_const_false) {
        return 0;
    } else if (arg == mp_const_true) {
        return 1;
    } else if (arg == mp_const_none) {
        return 0;
    } else if (FUNC2(arg)) {
        if (arg == FUNC0(0)) {
            return 0;
        } else {
            return 1;
        }
    } else {
        mp_obj_type_t *type = FUNC1(arg);
        if (type->unary_op != NULL) {
            mp_obj_t result = type->unary_op(MP_UNARY_OP_BOOL, arg);
            if (result != MP_OBJ_NULL) {
                return result == mp_const_true;
            }
        }

        mp_obj_t len = FUNC3(arg);
        if (len != MP_OBJ_NULL) {
            // obj has a length, truth determined if len != 0
            return len != FUNC0(0);
        } else {
            // any other obj is true per Python semantics
            return 1;
        }
    }
}