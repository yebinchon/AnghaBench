#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {size_t servo_id; int /*<<< orphan*/  max_usecs; int /*<<< orphan*/  min_usecs; } ;
typedef  TYPE_1__ pyb_servo_obj_t ;
typedef  TYPE_1__* mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,double,double) ; 
 TYPE_1__* mp_const_none ; 
 float FUNC2 (TYPE_1__* const) ; 
 TYPE_1__* FUNC3 (float) ; 
 int /*<<< orphan*/ * servo_ticks ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mp_obj_t FUNC5(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    if (n_args == 1) {
        // get
        float angle = FUNC1(servo_ticks[self->servo_id],
                                        FUNC4(self->min_usecs),
                                        FUNC4(self->max_usecs),
                                        0.0, 180.0);
        return FUNC3(angle);
    }
    // Set
    float angle = FUNC2(args[1]);
    if (angle < 0.0F) {
        angle = 0.0F;
    }
    if (angle > 180.0F) {
        angle = 180.0F;
    }
    servo_ticks[self->servo_id] = FUNC0(angle,
                                                    0.0F, 180.0F,
                                                    FUNC4(self->min_usecs),
                                                    FUNC4(self->max_usecs));
    return mp_const_none;
}