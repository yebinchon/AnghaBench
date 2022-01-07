
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gc_sweep_all () ;
 int mp_hal_delay_us (int) ;
 int mp_hal_stdout_tx_str (char*) ;
 int mp_reset () ;
 int pyexec_event_repl_init () ;

void soft_reset(void) {
    gc_sweep_all();
    mp_hal_stdout_tx_str("MPY: soft reboot\r\n");
    mp_hal_delay_us(10000);
    mp_reset();



}
