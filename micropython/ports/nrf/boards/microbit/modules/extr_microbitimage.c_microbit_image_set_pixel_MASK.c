#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mp_uint_t ;
typedef  scalar_t__ mp_obj_t ;
typedef  scalar_t__ mp_int_t ;
struct TYPE_5__ {int /*<<< orphan*/  greyscale; } ;
typedef  TYPE_1__ microbit_image_obj_t ;

/* Variables and functions */
 scalar_t__ MAX_BRIGHTNESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ mp_const_none ; 
 scalar_t__ FUNC4 (scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

mp_obj_t FUNC6(mp_uint_t n_args, const mp_obj_t *args) {
    (void)n_args;
    microbit_image_obj_t *self = (microbit_image_obj_t*)args[0];
    FUNC0(self);
    mp_int_t x = FUNC4(args[1]);
    mp_int_t y = FUNC4(args[2]);
    if (x < 0 || y < 0) {
        FUNC5("index cannot be negative");
    }
    mp_int_t bright = FUNC4(args[3]);
    if (bright < 0 || bright > MAX_BRIGHTNESS)
        FUNC5("brightness out of bounds.");
    if (x < FUNC3(self) && y < FUNC2(self)) {
        FUNC1(&(self->greyscale), x, y, bright);
        return mp_const_none;
    }
    FUNC5("index too large");
}