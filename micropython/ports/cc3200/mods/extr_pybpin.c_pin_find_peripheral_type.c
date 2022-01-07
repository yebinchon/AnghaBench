
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct TYPE_5__ {int num_afs; TYPE_1__* af_list; } ;
typedef TYPE_2__ pin_obj_t ;
typedef int mp_obj_t ;
struct TYPE_4__ {scalar_t__ fn; scalar_t__ unit; scalar_t__ type; } ;


 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;
 TYPE_2__* pin_find (int const) ;

uint8_t pin_find_peripheral_type (const mp_obj_t pin, uint8_t fn, uint8_t unit) {
    pin_obj_t *pin_o = pin_find(pin);
    for (int i = 0; i < pin_o->num_afs; i++) {
        if (pin_o->af_list[i].fn == fn && pin_o->af_list[i].unit == unit) {
            return pin_o->af_list[i].type;
        }
    }
    mp_raise_ValueError(mpexception_value_invalid_arguments);
}
