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
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  size_t uint32_t ;
struct TYPE_5__ {size_t pin; int /*<<< orphan*/  gpio; } ;
typedef  TYPE_1__ pin_obj_t ;
typedef  int /*<<< orphan*/  mp_obj_t ;
struct TYPE_6__ {int* EXTICR; } ;

/* Variables and functions */
 int EXTI_FTSR ; 
 int /*<<< orphan*/  EXTI_Mode_Event ; 
 int /*<<< orphan*/  EXTI_Mode_Interrupt ; 
 int EXTI_RTSR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t GPIO_MODE_IT_FALLING ; 
 size_t GPIO_MODE_IT_RISING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PRI_EXTINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  MP_OBJ_SENTINEL ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* SYSCFG ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (size_t) ; 
 int /*<<< orphan*/ * nvic_irq_channel ; 
 int /*<<< orphan*/  pyb_extint_callback ; 
 int /*<<< orphan*/ * pyb_extint_callback_arg ; 
 int* pyb_extint_hard_irq ; 
 int /*<<< orphan*/ * pyb_extint_mode ; 

void FUNC9(const pin_obj_t *pin, uint32_t mode) {
    uint32_t line = pin->pin;

    mp_obj_t *cb = &FUNC4(pyb_extint_callback)[line];

    FUNC7(line);

    *cb = MP_OBJ_SENTINEL;

    pyb_extint_mode[line] = (mode & 0x00010000) ? // GPIO_MODE_IT == 0x00010000
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    {
        // Configure and enable the callback

        pyb_extint_hard_irq[line] = 1;
        pyb_extint_callback_arg[line] = FUNC3(pin);

        // Route the GPIO to EXTI
        #if !defined(STM32WB)
        FUNC6();
        #endif
        SYSCFG->EXTICR[line >> 2] =
            (SYSCFG->EXTICR[line >> 2] & ~(0x0f << (4 * (line & 0x03))))
            | ((uint32_t)(FUNC0(pin->gpio)) << (4 * (line & 0x03)));

        // Enable or disable the rising detector
        if ((mode & GPIO_MODE_IT_RISING) == GPIO_MODE_IT_RISING) {
            EXTI_RTSR |= 1 << line;
        } else {
            EXTI_RTSR &= ~(1 << line);
        }

        // Enable or disable the falling detector
        if ((mode & GPIO_MODE_IT_FALLING) == GPIO_MODE_IT_FALLING) {
            EXTI_FTSR |= 1 << line;
        } else {
            EXTI_FTSR &= ~(1 << line);
        }

        // Configure the NVIC
        FUNC5(FUNC2(nvic_irq_channel[line]), IRQ_PRI_EXTINT);
        FUNC1(nvic_irq_channel[line]);

        // Enable the interrupt
        FUNC8(line);
    }
}