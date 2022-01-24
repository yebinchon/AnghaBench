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
typedef  TYPE_1__* mp_obj_t ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ machine_pin_obj_t ;
typedef  int /*<<< orphan*/  gpio_num_t ;

/* Variables and functions */
 int /*<<< orphan*/  machine_pin_type ; 
 int /*<<< orphan*/ * FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

gpio_num_t FUNC2(mp_obj_t pin_in) {
    if (FUNC0(pin_in) != &machine_pin_type) {
        FUNC1("expecting a pin");
    }
    machine_pin_obj_t *self = pin_in;
    return self->id;
}