#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {size_t servo_id; } ;
typedef  TYPE_1__ pyb_servo_obj_t ;
typedef  TYPE_1__* mp_obj_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * servo_pin ; 

__attribute__((used)) static mp_obj_t FUNC1(mp_obj_t self_in) {
    pyb_servo_obj_t *self = self_in;
    return FUNC0(servo_pin[self->servo_id]);
}