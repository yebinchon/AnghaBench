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
struct TYPE_3__ {int /*<<< orphan*/  mpz; } ;
typedef  TYPE_1__ mp_obj_int_t ;
typedef  int /*<<< orphan*/  mp_int_t ;
typedef  int /*<<< orphan*/  mp_const_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

mp_int_t FUNC4(mp_const_obj_t self_in) {
    if (FUNC2(self_in)) {
        return FUNC0(self_in);
    } else {
        const mp_obj_int_t *self = FUNC1(self_in);
        // hash returns actual int value if it fits in mp_int_t
        return FUNC3(&self->mpz);
    }
}