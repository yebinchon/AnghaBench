
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_2__ {int gpio_lpds_wake_cb; } ;


 TYPE_1__ pybsleep_data ;

void pyb_sleep_set_gpio_lpds_callback (mp_obj_t cb_obj) {
    pybsleep_data.gpio_lpds_wake_cb = cb_obj;
}
