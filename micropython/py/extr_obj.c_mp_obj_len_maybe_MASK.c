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
struct TYPE_3__ {int /*<<< orphan*/  (* unary_op ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_OBJ_NULL ; 
 int /*<<< orphan*/  MP_UNARY_OP_LEN ; 
 int /*<<< orphan*/  l ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_bytes ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mp_obj_t FUNC6(mp_obj_t o_in) {
    if (
#if !MICROPY_PY_BUILTINS_STR_UNICODE
        // It's simple - unicode is slow, non-unicode is fast
        FUNC3(o_in) ||
#endif
        FUNC4(o_in, &mp_type_bytes)) {
        FUNC0(o_in, l);
        return FUNC1(l);
    } else {
        mp_obj_type_t *type = FUNC2(o_in);
        if (type->unary_op != NULL) {
            return type->unary_op(MP_UNARY_OP_LEN, o_in);
        } else {
            return MP_OBJ_NULL;
        }
    }
}