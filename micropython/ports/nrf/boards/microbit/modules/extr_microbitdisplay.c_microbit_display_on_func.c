
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mp_obj_t ;
struct TYPE_2__ {int active; } ;
typedef TYPE_1__ microbit_display_obj_t ;


 int microbit_display_init () ;
 scalar_t__ mp_const_none ;

mp_obj_t microbit_display_on_func(mp_obj_t obj) {
    microbit_display_obj_t *self = (microbit_display_obj_t*)obj;
    microbit_display_init();


    self->active = 1;
    return mp_const_none;
}
