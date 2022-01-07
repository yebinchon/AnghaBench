
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int pyb_rtc_obj_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_2__ {int * rtc_obj; } ;


 TYPE_1__ pybsleep_data ;

void pyb_sleep_set_rtc_obj (mp_obj_t rtc_obj) {
    pybsleep_data.rtc_obj = (pyb_rtc_obj_t *)rtc_obj;
}
