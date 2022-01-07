
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PYB_SLP_SOFT_RESET ;
 int pybsleep_reset_cause ;

void pyb_sleep_signal_soft_reset (void) {
    pybsleep_reset_cause = PYB_SLP_SOFT_RESET;
}
