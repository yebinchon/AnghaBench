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
typedef  TYPE_1__* mp_obj_t ;
struct TYPE_6__ {scalar_t__ val; } ;
typedef  TYPE_1__ mp_obj_int_t ;
typedef  scalar_t__ mp_longint_impl_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 

int FUNC2(mp_obj_t self_in) {
    mp_longint_impl_t val;
    if (FUNC1(self_in)) {
        val = FUNC0(self_in);
    } else {
        mp_obj_int_t *self = self_in;
        val = self->val;
    }
    if (val < 0) {
        return -1;
    } else if (val > 0) {
        return 1;
    } else {
        return 0;
    }
}