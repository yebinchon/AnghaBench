
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_6__ {size_t pin; size_t name; int gpio; } ;
typedef TYPE_1__ pin_obj_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_7__ {int* EXTICR; } ;


 int EXTI_Mode_Event ;
 int EXTI_Mode_Interrupt ;
 scalar_t__ GPIO_GET_INDEX (int ) ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int IRQ_PRI_EXTINT ;
 int IRQn_NONNEG (int ) ;
 scalar_t__ MP_OBJ_FROM_PTR (TYPE_1__ const*) ;
 TYPE_1__* MP_OBJ_TO_PTR (scalar_t__) ;
 scalar_t__* MP_STATE_PORT (int ) ;
 int NVIC_SetPriority (int ,int ) ;
 TYPE_3__* SYSCFG ;
 int __HAL_RCC_SYSCFG_CLK_ENABLE () ;
 int extint_disable (size_t) ;
 int extint_enable (size_t) ;
 int extint_trigger_mode (size_t,size_t) ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_obj_is_small_int (scalar_t__) ;
 int mp_obj_new_exception_msg_varg (int *,char*,size_t) ;
 int mp_type_OSError ;
 int nlr_raise (int ) ;
 int * nvic_irq_channel ;
 int pyb_extint_callback ;
 scalar_t__* pyb_extint_callback_arg ;
 int* pyb_extint_hard_irq ;
 int * pyb_extint_mode ;

void extint_register_pin(const pin_obj_t *pin, uint32_t mode, bool hard_irq, mp_obj_t callback_obj) {
    uint32_t line = pin->pin;


    mp_obj_t *cb = &MP_STATE_PORT(pyb_extint_callback)[line];
    if (*cb != mp_const_none && MP_OBJ_FROM_PTR(pin) != pyb_extint_callback_arg[line]) {
        if (mp_obj_is_small_int(pyb_extint_callback_arg[line])) {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_OSError,
                "ExtInt vector %d is already in use", line));
        } else {
            const pin_obj_t *other_pin = MP_OBJ_TO_PTR(pyb_extint_callback_arg[line]);
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_OSError,
                "IRQ resource already taken by Pin('%q')", other_pin->name));
        }
    }

    extint_disable(line);

    *cb = callback_obj;
    pyb_extint_mode[line] = (mode & 0x00010000) ?
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    if (*cb != mp_const_none) {


        pyb_extint_hard_irq[line] = hard_irq;
        pyb_extint_callback_arg[line] = MP_OBJ_FROM_PTR(pin);



        __HAL_RCC_SYSCFG_CLK_ENABLE();

        SYSCFG->EXTICR[line >> 2] =
            (SYSCFG->EXTICR[line >> 2] & ~(0x0f << (4 * (line & 0x03))))
            | ((uint32_t)(GPIO_GET_INDEX(pin->gpio)) << (4 * (line & 0x03)));

        extint_trigger_mode(line, mode);


        NVIC_SetPriority(IRQn_NONNEG(nvic_irq_channel[line]), IRQ_PRI_EXTINT);
        HAL_NVIC_EnableIRQ(nvic_irq_channel[line]);


        extint_enable(line);
    }
}
