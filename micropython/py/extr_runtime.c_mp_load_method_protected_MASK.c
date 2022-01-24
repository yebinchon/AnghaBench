#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  qstr ;
struct TYPE_4__ {int /*<<< orphan*/ * ret_val; } ;
typedef  TYPE_1__ nlr_buf_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/ * type; } ;
typedef  TYPE_2__ mp_obj_base_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mp_type_AttributeError ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

void FUNC6(mp_obj_t obj, qstr attr, mp_obj_t *dest, bool catch_all_exc) {
    nlr_buf_t nlr;
    if (FUNC4(&nlr) == 0) {
        FUNC1(obj, attr, dest);
        FUNC3();
    } else {
        if (!catch_all_exc
            && !FUNC2(FUNC0(((mp_obj_base_t*)nlr.ret_val)->type),
                FUNC0(&mp_type_AttributeError))) {
            // Re-raise the exception
            FUNC5(FUNC0(nlr.ret_val));
        }
    }
}