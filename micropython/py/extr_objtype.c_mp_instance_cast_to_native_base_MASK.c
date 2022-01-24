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
typedef  int /*<<< orphan*/  mp_obj_type_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_2__ {int /*<<< orphan*/ * subobj; } ;
typedef  TYPE_1__ mp_obj_instance_t ;
typedef  int /*<<< orphan*/  mp_const_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MP_OBJ_NULL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

mp_obj_t FUNC4(mp_const_obj_t self_in, mp_const_obj_t native_type) {
    mp_obj_type_t *self_type = FUNC2(self_in);
    if (!FUNC3(FUNC0(self_type), native_type)) {
        return MP_OBJ_NULL;
    }
    mp_obj_instance_t *self = (mp_obj_instance_t*)FUNC1(self_in);
    return self->subobj[0];
}