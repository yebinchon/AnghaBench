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
typedef  scalar_t__ mp_obj_t ;
typedef  scalar_t__ mp_int_t ;
typedef  int /*<<< orphan*/  microbit_image_obj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

mp_obj_t FUNC6(mp_obj_t self_in, mp_obj_t x_in, mp_obj_t y_in) {
    microbit_image_obj_t *self = (microbit_image_obj_t*)self_in;
    mp_int_t x = FUNC4(x_in);
    mp_int_t y = FUNC4(y_in);
    if (x < 0 || y < 0) {
        FUNC5("index cannot be negative");
    }
    if (x < FUNC3(self) && y < FUNC2(self)) {
        return FUNC0(FUNC1(self, x, y));
    }
    FUNC5("index too large");
}