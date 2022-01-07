
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
struct TYPE_5__ {size_t pin; int gpio; } ;
typedef TYPE_1__ pin_obj_t ;
typedef int mp_obj_t ;
struct TYPE_6__ {int* EXTICR; } ;


 int EXTI_FTSR ;
 int EXTI_Mode_Event ;
 int EXTI_Mode_Interrupt ;
 int EXTI_RTSR ;
 scalar_t__ GPIO_GET_INDEX (int ) ;
 size_t GPIO_MODE_IT_FALLING ;
 size_t GPIO_MODE_IT_RISING ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int IRQ_PRI_EXTINT ;
 int IRQn_NONNEG (int ) ;
 int MP_OBJ_FROM_PTR (TYPE_1__ const*) ;
 int MP_OBJ_SENTINEL ;
 int * MP_STATE_PORT (int ) ;
 int NVIC_SetPriority (int ,int ) ;
 TYPE_3__* SYSCFG ;
 int __HAL_RCC_SYSCFG_CLK_ENABLE () ;
 int extint_disable (size_t) ;
 int extint_enable (size_t) ;
 int * nvic_irq_channel ;
 int pyb_extint_callback ;
 int * pyb_extint_callback_arg ;
 int* pyb_extint_hard_irq ;
 int * pyb_extint_mode ;

void extint_set(const pin_obj_t *pin, uint32_t mode) {
    uint32_t line = pin->pin;

    mp_obj_t *cb = &MP_STATE_PORT(pyb_extint_callback)[line];

    extint_disable(line);

    *cb = MP_OBJ_SENTINEL;

    pyb_extint_mode[line] = (mode & 0x00010000) ?
        EXTI_Mode_Interrupt : EXTI_Mode_Event;

    {


        pyb_extint_hard_irq[line] = 1;
        pyb_extint_callback_arg[line] = MP_OBJ_FROM_PTR(pin);



        __HAL_RCC_SYSCFG_CLK_ENABLE();

        SYSCFG->EXTICR[line >> 2] =
            (SYSCFG->EXTICR[line >> 2] & ~(0x0f << (4 * (line & 0x03))))
            | ((uint32_t)(GPIO_GET_INDEX(pin->gpio)) << (4 * (line & 0x03)));


        if ((mode & GPIO_MODE_IT_RISING) == GPIO_MODE_IT_RISING) {
            EXTI_RTSR |= 1 << line;
        } else {
            EXTI_RTSR &= ~(1 << line);
        }


        if ((mode & GPIO_MODE_IT_FALLING) == GPIO_MODE_IT_FALLING) {
            EXTI_FTSR |= 1 << line;
        } else {
            EXTI_FTSR &= ~(1 << line);
        }


        NVIC_SetPriority(IRQn_NONNEG(nvic_irq_channel[line]), IRQ_PRI_EXTINT);
        HAL_NVIC_EnableIRQ(nvic_irq_channel[line]);


        extint_enable(line);
    }
}
