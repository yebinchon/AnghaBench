
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint ;
typedef int nlr_buf_t ;
struct TYPE_6__ {TYPE_2__* wlan_obj; TYPE_1__* rtc_obj; } ;
struct TYPE_5__ {scalar_t__ irq_enabled; } ;
struct TYPE_4__ {int pwrmode; scalar_t__ irq_enabled; } ;


 int FAILED_SLEEP_DELAY_MS ;
 int MAP_PRCMLPDSWakeupSourceDisable (int ) ;
 int MAP_PRCMLPDSWakeupSourceEnable (int ) ;
 int PRCM_LPDS_HOST_IRQ ;
 int PRCM_LPDS_TIMER ;
 int PYB_PWR_MODE_LPDS ;
 int disable_irq () ;
 int enable_irq (int ) ;
 int mp_hal_delay_ms (int ) ;
 int nlr_pop () ;
 scalar_t__ nlr_push (int *) ;
 int pyb_sleep_suspend_enter () ;
 TYPE_3__ pybsleep_data ;
 int server_sleep_sockets () ;
 int setup_timer_lpds_wake () ;

void pyb_sleep_sleep (void) {
    nlr_buf_t nlr;


    if (pybsleep_data.rtc_obj->irq_enabled && (pybsleep_data.rtc_obj->pwrmode & PYB_PWR_MODE_LPDS)) {
        if (!setup_timer_lpds_wake()) {

            mp_hal_delay_ms(FAILED_SLEEP_DELAY_MS);
            return;
        }
    } else {

        MAP_PRCMLPDSWakeupSourceDisable(PRCM_LPDS_TIMER);
    }


    if (pybsleep_data.wlan_obj->irq_enabled) {
        MAP_PRCMLPDSWakeupSourceEnable (PRCM_LPDS_HOST_IRQ);
        server_sleep_sockets();
    } else {
        MAP_PRCMLPDSWakeupSourceDisable (PRCM_LPDS_HOST_IRQ);
    }



    uint primsk = disable_irq();
    if (nlr_push(&nlr) == 0) {
        pyb_sleep_suspend_enter();
        nlr_pop();
    }


    enable_irq(primsk);
}
