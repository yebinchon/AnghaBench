
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODEM_SLEEP_T ;
 scalar_t__ NULL_MODE ;
 scalar_t__ PYEXEC_MODE_RAW_REPL ;
 int mp_hal_stdout_tx_str (char*) ;
 int mp_reset () ;
 int pyexec_event_repl_init () ;
 scalar_t__ pyexec_friendly_repl () ;
 scalar_t__ pyexec_mode_kind ;
 scalar_t__ pyexec_raw_repl () ;
 int soft_reset () ;
 int uart_task_init () ;
 int wifi_fpm_do_sleep (int) ;
 int wifi_fpm_open () ;
 int wifi_fpm_set_sleep_type (int ) ;
 scalar_t__ wifi_get_opmode () ;

void init_done(void) {

    wifi_fpm_set_sleep_type(MODEM_SLEEP_T);
    if (wifi_get_opmode() == NULL_MODE) {
        wifi_fpm_open();
        wifi_fpm_do_sleep(0xfffffff);
    }




    mp_reset();
    mp_hal_stdout_tx_str("\r\n");





soft_reset:
    for (;;) {
        if (pyexec_mode_kind == PYEXEC_MODE_RAW_REPL) {
            if (pyexec_raw_repl() != 0) {
                break;
            }
        } else {
            if (pyexec_friendly_repl() != 0) {
                break;
            }
        }
    }
    soft_reset();
    goto soft_reset;

}
