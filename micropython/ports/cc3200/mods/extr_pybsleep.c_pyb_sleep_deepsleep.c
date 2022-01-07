
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* rtc_obj; } ;
struct TYPE_3__ {int pwrmode; scalar_t__ irq_enabled; } ;


 int FAILED_SLEEP_DELAY_MS ;
 int MAP_PRCMHibernateEnter () ;
 int MAP_PRCMLPDSWakeupSourceDisable (int ) ;
 int PRCM_HIB_SLOW_CLK_CTR ;
 int PYB_PWR_MODE_HIBERNATE ;
 int SL_STOP_TIMEOUT ;
 int mp_hal_delay_ms (int ) ;
 int pyb_sleep_flash_powerdown () ;
 int pyb_sleep_iopark (int) ;
 TYPE_2__ pybsleep_data ;
 int setup_timer_hibernate_wake () ;
 int wlan_stop (int ) ;

void pyb_sleep_deepsleep (void) {

    if (pybsleep_data.rtc_obj->irq_enabled && (pybsleep_data.rtc_obj->pwrmode & PYB_PWR_MODE_HIBERNATE)) {
        if (!setup_timer_hibernate_wake()) {

            mp_hal_delay_ms(FAILED_SLEEP_DELAY_MS);
            return;
        }
    } else {

        MAP_PRCMLPDSWakeupSourceDisable(PRCM_HIB_SLOW_CLK_CTR);
    }

    wlan_stop(SL_STOP_TIMEOUT);
    pyb_sleep_flash_powerdown();

    pyb_sleep_iopark(1);
    MAP_PRCMHibernateEnter();
}
