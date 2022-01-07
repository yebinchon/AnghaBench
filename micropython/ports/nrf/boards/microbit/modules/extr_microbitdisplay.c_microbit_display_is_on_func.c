
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ mp_obj_t ;
struct TYPE_2__ {scalar_t__ active; } ;
typedef TYPE_1__ microbit_display_obj_t ;


 scalar_t__ mp_const_false ;
 scalar_t__ mp_const_true ;

mp_obj_t microbit_display_is_on_func(mp_obj_t obj) {
    microbit_display_obj_t *self = (microbit_display_obj_t*)obj;
    if (self->active) {
        return mp_const_true;
    }
    else {
        return mp_const_false;
    }
}
