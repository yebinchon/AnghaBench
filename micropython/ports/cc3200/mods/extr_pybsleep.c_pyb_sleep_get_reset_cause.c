
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pybsleep_reset_cause_t ;


 int pybsleep_reset_cause ;

pybsleep_reset_cause_t pyb_sleep_get_reset_cause (void) {
    return pybsleep_reset_cause;
}
