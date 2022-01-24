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
struct TYPE_6__ {int /*<<< orphan*/  val; } ;
typedef  TYPE_1__ mp_obj_int_t ;
typedef  int /*<<< orphan*/  mp_int_t ;
typedef  TYPE_1__* mp_const_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

mp_int_t FUNC2(mp_const_obj_t self_in) {
    if (FUNC1(self_in)) {
        return FUNC0(self_in);
    } else {
        const mp_obj_int_t *self = self_in;
        return self->val;
    }
}