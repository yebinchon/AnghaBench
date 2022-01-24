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
typedef  int /*<<< orphan*/  pyb_pin_obj_t ;
typedef  int /*<<< orphan*/ * mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  pyb_pin_type ; 

pyb_pin_obj_t *FUNC2(mp_obj_t pin_in) {
    if (FUNC0(pin_in) != &pyb_pin_type) {
        FUNC1("expecting a pin");
    }
    pyb_pin_obj_t *self = pin_in;
    return self;
}