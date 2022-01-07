
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint ;
struct TYPE_5__ {int pin; int gpio; int pin_mask; } ;
typedef TYPE_1__ pin_obj_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_6__ {int Mode; int Pull; int Speed; int Pin; } ;
typedef TYPE_2__ GPIO_InitTypeDef ;


 int EXTI_Mode_Event ;
 int EXTI_Mode_Interrupt ;
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
 int GPIO_SPEED_FREQ_HIGH ;
 int HAL_GPIO_Init (int ,TYPE_2__*) ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int IRQ_PRI_EXTINT ;
 int IRQn_NONNEG (int ) ;
 int MP_OBJ_NEW_SMALL_INT (int) ;
 scalar_t__* MP_STATE_PORT (int ) ;
 int NVIC_SetPriority (int ,int ) ;
 int extint_disable (int) ;
 int extint_enable (int) ;
 int extint_trigger_mode (int,int) ;
 scalar_t__ mp_const_none ;
 int mp_hal_gpio_clock_enable (int ) ;
 int mp_obj_get_int (scalar_t__) ;
 scalar_t__ mp_obj_is_int (scalar_t__) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int,...) ;
 int mp_type_ValueError ;
 int nlr_raise (int ) ;
 int * nvic_irq_channel ;
 TYPE_1__* pin_find (scalar_t__) ;
 int pyb_extint_callback ;
 int * pyb_extint_callback_arg ;
 int* pyb_extint_hard_irq ;
 int * pyb_extint_mode ;

uint extint_register(mp_obj_t pin_obj, uint32_t mode, uint32_t pull, mp_obj_t callback_obj, bool override_callback_obj) {
    const pin_obj_t *pin = ((void*)0);
    uint v_line;

    if (mp_obj_is_int(pin_obj)) {



        v_line = mp_obj_get_int(pin_obj);
        if (v_line < 16) {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "ExtInt vector %d < 16, use a Pin object", v_line));
        }
        if (v_line >= EXTI_NUM_VECTORS) {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "ExtInt vector %d >= max of %d", v_line, EXTI_NUM_VECTORS));
        }
    } else {
        pin = pin_find(pin_obj);
        v_line = pin->pin;
    }
    if (mode != GPIO_MODE_IT_RISING &&
        mode != GPIO_MODE_IT_FALLING &&
        mode != GPIO_MODE_IT_RISING_FALLING &&
        mode != GPIO_MODE_EVT_RISING &&
        mode != GPIO_MODE_EVT_FALLING &&
        mode != GPIO_MODE_EVT_RISING_FALLING) {
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "invalid ExtInt Mode: %d", mode));
    }
    if (pull != GPIO_NOPULL &&
        pull != GPIO_PULLUP &&
        pull != GPIO_PULLDOWN) {
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "invalid ExtInt Pull: %d", pull));
    }

    mp_obj_t *cb = &MP_STATE_PORT(pyb_extint_callback)[v_line];
    if (!override_callback_obj && *cb != mp_const_none && callback_obj != mp_const_none) {
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ValueError, "ExtInt vector %d is already in use", v_line));
    }




    extint_disable(v_line);

    *cb = callback_obj;
    pyb_extint_mode[v_line] = (mode & 0x00010000) ?
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    if (*cb != mp_const_none) {
        pyb_extint_hard_irq[v_line] = 1;
        pyb_extint_callback_arg[v_line] = MP_OBJ_NEW_SMALL_INT(v_line);

        if (pin == ((void*)0)) {

            extint_trigger_mode(v_line, mode);
            extint_enable(v_line);
        } else {
            mp_hal_gpio_clock_enable(pin->gpio);
            GPIO_InitTypeDef exti;
            exti.Pin = pin->pin_mask;
            exti.Mode = mode;
            exti.Pull = pull;
            exti.Speed = GPIO_SPEED_FREQ_HIGH;
            HAL_GPIO_Init(pin->gpio, &exti);


        }


        NVIC_SetPriority(IRQn_NONNEG(nvic_irq_channel[v_line]), IRQ_PRI_EXTINT);
        HAL_NVIC_EnableIRQ(nvic_irq_channel[v_line]);
    }
    return v_line;
}
