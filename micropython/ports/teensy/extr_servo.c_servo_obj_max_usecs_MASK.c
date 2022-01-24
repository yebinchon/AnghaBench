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
struct TYPE_8__ {int /*<<< orphan*/  max_usecs; } ;
typedef  TYPE_1__ pyb_servo_obj_t ;
typedef  TYPE_1__* mp_obj_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* mp_const_none ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__* const) ; 

__attribute__((used)) static mp_obj_t FUNC2(int n_args, const mp_obj_t *args) {
    pyb_servo_obj_t *self = args[0];
    if (n_args == 1) {
        // get max
        return FUNC0(self->max_usecs);
    }
    // Set max
    self->max_usecs = FUNC1(args[1]);
    return mp_const_none;
}