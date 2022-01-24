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
struct TYPE_3__ {int phys_port; int /*<<< orphan*/  periph; int /*<<< orphan*/  func; } ;
typedef  TYPE_1__ pyb_pin_obj_t ;
typedef  size_t mp_hal_pin_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  GPIO_MODE_INPUT ; 
 int /*<<< orphan*/  PAD_XPD_DCDC_CONF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_GPIO_CONF ; 
 int /*<<< orphan*/  RTC_GPIO_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * pin_mode ; 
 TYPE_1__* pyb_pin_obj ; 

void FUNC5(mp_hal_pin_obj_t pin_id) {
    pin_mode[pin_id] = GPIO_MODE_INPUT;
    if (pin_id == 16) {
        FUNC3(PAD_XPD_DCDC_CONF, (FUNC2(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        FUNC3(RTC_GPIO_CONF, FUNC2(RTC_GPIO_CONF) & ~1);
        FUNC3(RTC_GPIO_ENABLE, (FUNC2(RTC_GPIO_ENABLE) & ~1)); // input
    } else {
        const pyb_pin_obj_t *self = &pyb_pin_obj[pin_id];
        FUNC0(self->periph, self->func);
        FUNC1(self->periph);
        FUNC4(0, 0, 0, 1 << self->phys_port);
    }
}