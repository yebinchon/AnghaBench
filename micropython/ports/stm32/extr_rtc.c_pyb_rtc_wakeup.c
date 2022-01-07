
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ mp_obj_t ;
typedef int mp_int_t ;
struct TYPE_6__ {int IMR1; int RTSR1; int IMR; int RTSR; int PR1; int PR; } ;
struct TYPE_5__ {int IMR1; int PR1; } ;
struct TYPE_4__ {int WPR; int CR; int ISR; int WUTR; } ;


 TYPE_3__* EXTI ;
 TYPE_2__* EXTI_D1 ;
 size_t EXTI_RTC_WAKEUP ;
 int HAL_NVIC_DisableIRQ (int ) ;
 int HAL_NVIC_EnableIRQ (int ) ;
 int IRQ_PRI_RTC_WKUP ;
 scalar_t__* MP_STATE_PORT (int ) ;
 int NVIC_SetPriority (int ,int ) ;
 TYPE_1__* RTC ;
 int RTC_CR_WUTE ;
 int RTC_CR_WUTIE ;
 int RTC_ISR_WUTF ;
 int RTC_ISR_WUTWF ;
 int RTC_WKUP_IRQn ;
 scalar_t__ const mp_const_none ;
 int mp_obj_get_int (scalar_t__ const) ;
 int mp_raise_ValueError (char*) ;
 int pyb_extint_callback ;
 int rtc_init_finalise () ;

mp_obj_t pyb_rtc_wakeup(size_t n_args, const mp_obj_t *args) {
    rtc_init_finalise();


    HAL_NVIC_DisableIRQ(RTC_WKUP_IRQn);

    bool enable = 0;
    mp_int_t wucksel;
    mp_int_t wut;
    mp_obj_t callback = mp_const_none;
    if (n_args <= 3) {
        if (args[1] == mp_const_none) {

        } else {

            mp_int_t ms = mp_obj_get_int(args[1]);
            mp_int_t div = 2;
            wucksel = 3;
            while (div <= 16 && ms > 2000 * div) {
                div *= 2;
                wucksel -= 1;
            }
            if (div <= 16) {
                wut = 32768 / div * ms / 1000;
            } else {

                wucksel = 4;
                wut = ms / 1000;
                if (wut > 0x10000) {

                    wucksel = 6;
                    wut -= 0x10000;
                    if (wut > 0x10000) {

                        mp_raise_ValueError("wakeup value too large");
                    }
                }
            }

            if (wut > 0) {
                wut -= 1;
            }
            enable = 1;
        }
        if (n_args == 3) {
            callback = args[2];
        }
    } else {

        wucksel = mp_obj_get_int(args[1]);
        wut = mp_obj_get_int(args[2]);
        callback = args[3];
        enable = 1;
    }


    MP_STATE_PORT(pyb_extint_callback)[EXTI_RTC_WAKEUP] = callback;


    RTC->WPR = 0xca;
    RTC->WPR = 0x53;


    RTC->CR &= ~RTC_CR_WUTE;


    while (!(RTC->ISR & RTC_ISR_WUTWF)) {
    }

    if (enable) {

        RTC->WUTR = wut;




        RTC->CR = (RTC->CR & ~7) | (1 << 14) | (1 << 10) | (wucksel & 7);


        RTC->WPR = 0xff;
        EXTI->IMR |= 1 << EXTI_RTC_WAKEUP;
        EXTI->RTSR |= 1 << EXTI_RTC_WAKEUP;



        RTC->ISR &= ~RTC_ISR_WUTF;





        EXTI->PR = 1 << EXTI_RTC_WAKEUP;


        NVIC_SetPriority(RTC_WKUP_IRQn, IRQ_PRI_RTC_WKUP);
        HAL_NVIC_EnableIRQ(RTC_WKUP_IRQn);


    } else {

        RTC->CR &= ~RTC_CR_WUTIE;


        RTC->WPR = 0xff;







        EXTI->IMR &= ~(1 << EXTI_RTC_WAKEUP);

    }

    return mp_const_none;
}
