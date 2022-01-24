#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_6__ {size_t pin; size_t name; int /*<<< orphan*/  gpio; } ;
typedef  TYPE_1__ pin_obj_t ;
typedef  scalar_t__ mp_obj_t ;
struct TYPE_7__ {int* EXTICR; } ;

/* Variables and functions */
 int /*<<< orphan*/  EXTI_Mode_Event ; 
 int /*<<< orphan*/  EXTI_Mode_Interrupt ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PRI_EXTINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC4 (scalar_t__) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* SYSCFG ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/  FUNC9 (size_t) ; 
 int /*<<< orphan*/  FUNC10 (size_t,size_t) ; 
 scalar_t__ mp_const_none ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  mp_type_OSError ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvic_irq_channel ; 
 int /*<<< orphan*/  pyb_extint_callback ; 
 scalar_t__* pyb_extint_callback_arg ; 
 int* pyb_extint_hard_irq ; 
 int /*<<< orphan*/ * pyb_extint_mode ; 

void FUNC14(const pin_obj_t *pin, uint32_t mode, bool hard_irq, mp_obj_t callback_obj) {
    uint32_t line = pin->pin;

    // Check if the ExtInt line is already in use by another Pin/ExtInt
    mp_obj_t *cb = &FUNC5(pyb_extint_callback)[line];
    if (*cb != mp_const_none && FUNC3(pin) != pyb_extint_callback_arg[line]) {
        if (FUNC11(pyb_extint_callback_arg[line])) {
            FUNC13(FUNC12(&mp_type_OSError,
                "ExtInt vector %d is already in use", line));
        } else {
            const pin_obj_t *other_pin = FUNC4(pyb_extint_callback_arg[line]);
            FUNC13(FUNC12(&mp_type_OSError,
                "IRQ resource already taken by Pin('%q')", other_pin->name));
        }
    }

    FUNC8(line);

    *cb = callback_obj;
    pyb_extint_mode[line] = (mode & 0x00010000) ? // GPIO_MODE_IT == 0x00010000
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    if (*cb != mp_const_none) {
        // Configure and enable the callback

        pyb_extint_hard_irq[line] = hard_irq;
        pyb_extint_callback_arg[line] = FUNC3(pin);

        // Route the GPIO to EXTI
        #if !defined(STM32WB)
        FUNC7();
        #endif
        SYSCFG->EXTICR[line >> 2] =
            (SYSCFG->EXTICR[line >> 2] & ~(0x0f << (4 * (line & 0x03))))
            | ((uint32_t)(FUNC0(pin->gpio)) << (4 * (line & 0x03)));

        FUNC10(line, mode);

        // Configure the NVIC
        FUNC6(FUNC2(nvic_irq_channel[line]), IRQ_PRI_EXTINT);
        FUNC1(nvic_irq_channel[line]);

        // Enable the interrupt
        FUNC9(line);
    }
}