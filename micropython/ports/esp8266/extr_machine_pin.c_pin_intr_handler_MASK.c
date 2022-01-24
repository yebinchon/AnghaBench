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
typedef  int uint32_t ;
typedef  scalar_t__ mp_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ MP_OBJ_NULL ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  pin_irq_handler ; 
 scalar_t__* pin_irq_is_hard ; 
 int /*<<< orphan*/ * pyb_pin_obj ; 

void FUNC8(uint32_t status) {
    FUNC5();
    FUNC2();
    status &= 0xffff;
    for (int p = 0; status; ++p, status >>= 1) {
        if (status & 1) {
            mp_obj_t handler = FUNC1(pin_irq_handler)[p];
            if (handler != MP_OBJ_NULL) {
                if (pin_irq_is_hard[p]) {
                    FUNC4(handler, FUNC0(&pyb_pin_obj[p]));
                } else {
                    FUNC6(handler, FUNC0(&pyb_pin_obj[p]));
                }
            }
        }
    }
    FUNC3();
    FUNC7();
}