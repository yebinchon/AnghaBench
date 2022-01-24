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
typedef  int /*<<< orphan*/  pyb_led_obj_t ;
typedef  int /*<<< orphan*/  mp_print_t ;
typedef  int /*<<< orphan*/  mp_print_kind_t ;
typedef  int /*<<< orphan*/ * mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,char*,int /*<<< orphan*/ ) ; 

void FUNC2(const mp_print_t *print, mp_obj_t self_in, mp_print_kind_t kind) {
    pyb_led_obj_t *self = self_in;
    FUNC1(print, "LED(%u)", FUNC0(self));
}