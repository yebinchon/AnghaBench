
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pybsleep_wake_reason_t ;


 int pybsleep_wake_reason ;

pybsleep_wake_reason_t pyb_sleep_get_wake_reason (void) {
    return pybsleep_wake_reason;
}
