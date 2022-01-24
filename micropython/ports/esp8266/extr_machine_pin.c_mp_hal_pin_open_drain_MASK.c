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
struct TYPE_3__ {int phys_port; int /*<<< orphan*/  func; int /*<<< orphan*/  periph; } ;
typedef  TYPE_1__ pyb_pin_obj_t ;
typedef  size_t mp_hal_pin_obj_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  GPIO_ENABLE_ADDRESS ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  GPIO_PAD_DRIVER_ENABLE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  PAD_XPD_DCDC_CONF ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RTC_GPIO_CONF ; 
 int /*<<< orphan*/  RTC_GPIO_ENABLE ; 
 int /*<<< orphan*/  RTC_GPIO_OUT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 TYPE_1__* pyb_pin_obj ; 

void FUNC10(mp_hal_pin_obj_t pin_id) {
    const pyb_pin_obj_t *pin = &pyb_pin_obj[pin_id];

    if (pin->phys_port == 16) {
        // configure GPIO16 as input with output register holding 0
        FUNC9(PAD_XPD_DCDC_CONF, (FUNC8(PAD_XPD_DCDC_CONF) & 0xffffffbc) | 1);
        FUNC9(RTC_GPIO_CONF, FUNC8(RTC_GPIO_CONF) & ~1);
        FUNC9(RTC_GPIO_ENABLE, (FUNC8(RTC_GPIO_ENABLE) & ~1)); // input
        FUNC9(RTC_GPIO_OUT, (FUNC8(RTC_GPIO_OUT) & ~1)); // out=0
        return;
    }

    FUNC0();
    FUNC7(pin->periph, pin->func);
    FUNC6(FUNC3(FUNC2(pin->phys_port)),
        FUNC5(FUNC3(FUNC2(pin->phys_port)))
        | FUNC4(GPIO_PAD_DRIVER_ENABLE)); // open drain
    FUNC6(GPIO_ENABLE_ADDRESS,
        FUNC5(GPIO_ENABLE_ADDRESS) | (1 << pin->phys_port));
    FUNC1();
}