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
typedef  int /*<<< orphan*/  mp_uint_t ;
typedef  scalar_t__ mp_obj_t ;
typedef  int /*<<< orphan*/  mp_int_t ;
typedef  int /*<<< orphan*/  microbit_image_obj_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const) ; 

mp_obj_t FUNC2(mp_uint_t n_args, const mp_obj_t *args) {
    (void)n_args;
    microbit_image_obj_t *self = (microbit_image_obj_t*)args[0];
    mp_int_t x0 = FUNC1(args[1]);
    mp_int_t y0 = FUNC1(args[2]);
    mp_int_t x1 = FUNC1(args[3]);
    mp_int_t y1 = FUNC1(args[4]);
    return FUNC0(self, x0, y0, x1, y1);
}