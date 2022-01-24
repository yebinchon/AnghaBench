#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int mp_int_t ;
typedef  scalar_t__ mp_const_obj_t ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ mp_const_false ; 
 scalar_t__ mp_const_true ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mp_type_int ; 

bool FUNC4(mp_const_obj_t arg, mp_int_t *value) {
    if (arg == mp_const_false) {
        *value = 0;
    } else if (arg == mp_const_true) {
        *value = 1;
    } else if (FUNC2(arg)) {
        *value = FUNC0(arg);
    } else if (FUNC3(arg, &mp_type_int)) {
        *value = FUNC1(arg);
    } else {
        return false;
    }
    return true;
}