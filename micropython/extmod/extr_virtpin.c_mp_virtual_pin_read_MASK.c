#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int (* ioctl ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_2__ mp_pin_p_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_6__ {TYPE_1__* type; } ;
typedef  TYPE_3__ mp_obj_base_t ;
struct TYPE_4__ {scalar_t__ protocol; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MP_PIN_READ ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

int FUNC2(mp_obj_t pin) {
    mp_obj_base_t* s = (mp_obj_base_t*)FUNC0(pin);
    mp_pin_p_t *pin_p = (mp_pin_p_t*)s->type->protocol;
    return pin_p->ioctl(pin, MP_PIN_READ, 0, NULL);
}