
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint ;
typedef int mp_uint_t ;


 int EXTI_FTSR ;
 int EXTI_MODE_BB (int ,int) ;
 int EXTI_NUM_VECTORS ;
 int EXTI_RTSR ;
 int EXTI_Trigger_Falling ;
 int EXTI_Trigger_Rising ;
 int GPIO_MODE_IT_FALLING ;
 int GPIO_MODE_IT_RISING ;
 int disable_irq () ;
 int enable_irq (int ) ;

void extint_trigger_mode(uint line, uint32_t mode) {
    if (line >= EXTI_NUM_VECTORS) {
        return;
    }


    mp_uint_t irq_state = disable_irq();

    if ((mode & GPIO_MODE_IT_RISING) == GPIO_MODE_IT_RISING) {
        EXTI_RTSR |= (1 << line);
    } else {
        EXTI_RTSR &= ~(1 << line);
    }

    if ((mode & GPIO_MODE_IT_FALLING) == GPIO_MODE_IT_FALLING) {
        EXTI_FTSR |= 1 << line;
    } else {
        EXTI_FTSR &= ~(1 << line);
    }
    enable_irq(irq_state);







}
