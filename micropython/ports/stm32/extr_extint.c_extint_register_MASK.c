#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  int uint ;
struct TYPE_5__ {int pin; int /*<<< orphan*/  gpio; int /*<<< orphan*/  pin_mask; } ;
typedef  TYPE_1__ pin_obj_t ;
typedef  scalar_t__ mp_obj_t ;
struct TYPE_6__ {int Mode; int Pull; int /*<<< orphan*/  Speed; int /*<<< orphan*/  Pin; } ;
typedef  TYPE_2__ GPIO_InitTypeDef ;

/* Variables and functions */
 int /*<<< orphan*/  EXTI_Mode_Event ; 
 int /*<<< orphan*/  EXTI_Mode_Interrupt ; 
 int EXTI_NUM_VECTORS ; 
 int GPIO_MODE_EVT_FALLING ; 
 int GPIO_MODE_EVT_RISING ; 
 int GPIO_MODE_EVT_RISING_FALLING ; 
 int GPIO_MODE_IT_FALLING ; 
 int GPIO_MODE_IT_RISING ; 
 int GPIO_MODE_IT_RISING_FALLING ; 
 int GPIO_NOPULL ; 
 int GPIO_PULLDOWN ; 
 int GPIO_PULLUP ; 
 int /*<<< orphan*/  GPIO_SPEED_FREQ_HIGH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PRI_EXTINT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 scalar_t__ mp_const_none ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  mp_type_ValueError ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * nvic_irq_channel ; 
 TYPE_1__* FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  pyb_extint_callback ; 
 int /*<<< orphan*/ * pyb_extint_callback_arg ; 
 int* pyb_extint_hard_irq ; 
 int /*<<< orphan*/ * pyb_extint_mode ; 

uint FUNC15(mp_obj_t pin_obj, uint32_t mode, uint32_t pull, mp_obj_t callback_obj, bool override_callback_obj) {
    const pin_obj_t *pin = NULL;
    uint v_line;

    if (FUNC11(pin_obj)) {
        // If an integer is passed in, then use it to identify lines 16 thru 22
        // We expect lines 0 thru 15 to be passed in as a pin, so that we can
        // get both the port number and line number.
        v_line = FUNC10(pin_obj);
        if (v_line < 16) {
            FUNC13(FUNC12(&mp_type_ValueError, "ExtInt vector %d < 16, use a Pin object", v_line));
        }
        if (v_line >= EXTI_NUM_VECTORS) {
            FUNC13(FUNC12(&mp_type_ValueError, "ExtInt vector %d >= max of %d", v_line, EXTI_NUM_VECTORS));
        }
    } else {
        pin = FUNC14(pin_obj);
        v_line = pin->pin;
    }
    if (mode != GPIO_MODE_IT_RISING &&
        mode != GPIO_MODE_IT_FALLING &&
        mode != GPIO_MODE_IT_RISING_FALLING &&
        mode != GPIO_MODE_EVT_RISING &&
        mode != GPIO_MODE_EVT_FALLING &&
        mode != GPIO_MODE_EVT_RISING_FALLING) {
        FUNC13(FUNC12(&mp_type_ValueError, "invalid ExtInt Mode: %d", mode));
    }
    if (pull != GPIO_NOPULL &&
        pull != GPIO_PULLUP &&
        pull != GPIO_PULLDOWN) {
        FUNC13(FUNC12(&mp_type_ValueError, "invalid ExtInt Pull: %d", pull));
    }

    mp_obj_t *cb = &FUNC4(pyb_extint_callback)[v_line];
    if (!override_callback_obj && *cb != mp_const_none && callback_obj != mp_const_none) {
        FUNC13(FUNC12(&mp_type_ValueError, "ExtInt vector %d is already in use", v_line));
    }

    // We need to update callback atomically, so we disable the line
    // before we update anything.

    FUNC6(v_line);

    *cb = callback_obj;
    pyb_extint_mode[v_line] = (mode & 0x00010000) ? // GPIO_MODE_IT == 0x00010000
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    if (*cb != mp_const_none) {
        pyb_extint_hard_irq[v_line] = true;
        pyb_extint_callback_arg[v_line] = FUNC3(v_line);

        if (pin == NULL) {
            // pin will be NULL for non GPIO EXTI lines
            FUNC8(v_line, mode);
            FUNC7(v_line);
        } else {
            FUNC9(pin->gpio);
            GPIO_InitTypeDef exti;
            exti.Pin = pin->pin_mask;
            exti.Mode = mode;
            exti.Pull = pull;
            exti.Speed = GPIO_SPEED_FREQ_HIGH;
            FUNC0(pin->gpio, &exti);

            // Calling HAL_GPIO_Init does an implicit extint_enable
        }

        /* Enable and set NVIC Interrupt to the lowest priority */
        FUNC5(FUNC2(nvic_irq_channel[v_line]), IRQ_PRI_EXTINT);
        FUNC1(nvic_irq_channel[v_line]);
    }
    return v_line;
}