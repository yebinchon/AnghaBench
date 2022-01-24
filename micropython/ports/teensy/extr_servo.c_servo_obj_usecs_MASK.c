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
typedef  int /*<<< orphan*/  uint ;
struct TYPE_8__ {size_t servo_id; scalar_t__ min_usecs; scalar_t__ max_usecs; } ;
typedef  TYPE_1__ pyb_servo_obj_t ;
typedef  TYPE_1__* mp_obj_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_1__* mp_const_none ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__* const) ; 
 int /*<<< orphan*/ * servo_ticks ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mp_obj_t FUNC5(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    uint usecs;
    if (n_args == 1) {
        // get
        return FUNC0(FUNC3(servo_ticks[self->servo_id]));
    }
    // Set
    usecs = FUNC2(args[1]);

    if (self->min_usecs < self->max_usecs) {
        usecs = FUNC1(usecs, self->min_usecs, self->max_usecs);
    } else {
        usecs = FUNC1(usecs, self->max_usecs, self->min_usecs);
    }
    servo_ticks[self->servo_id] = FUNC4(usecs);
    return mp_const_none;
}