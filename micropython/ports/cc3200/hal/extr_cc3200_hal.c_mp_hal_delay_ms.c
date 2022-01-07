
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int mp_uint_t ;


 int HAL_NVIC_INT_CTRL_REG ;
 int HAL_VECTACTIVE_MASK ;
 int HAL_tickCount ;
 scalar_t__ IRQ_STATE_ENABLED ;
 int MP_THREAD_GIL_ENTER () ;
 int MP_THREAD_GIL_EXIT () ;
 int UTILS_DELAY_US_TO_COUNT (int) ;
 int UtilsDelay (int ) ;
 int __WFI () ;
 int portTICK_PERIOD_MS ;
 scalar_t__ query_irq () ;
 int vTaskDelay (int) ;

void mp_hal_delay_ms(mp_uint_t delay) {

    if ((HAL_NVIC_INT_CTRL_REG & HAL_VECTACTIVE_MASK) == 0 && query_irq() == IRQ_STATE_ENABLED) {
        MP_THREAD_GIL_EXIT();



            uint32_t start = HAL_tickCount;

            while (HAL_tickCount - start < delay) {

                __WFI();
            }

        MP_THREAD_GIL_ENTER();
    } else {
        for (int ms = 0; ms < delay; ms++) {
            UtilsDelay(UTILS_DELAY_US_TO_COUNT(1000));
        }
    }
}
