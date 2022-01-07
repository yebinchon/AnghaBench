
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mp_obj_t ;
struct TYPE_5__ {int id; } ;
typedef TYPE_1__ machine_pin_obj_t ;
typedef int gpio_num_t ;


 int machine_pin_type ;
 int * mp_obj_get_type (TYPE_1__*) ;
 int mp_raise_ValueError (char*) ;

gpio_num_t machine_pin_get_id(mp_obj_t pin_in) {
    if (mp_obj_get_type(pin_in) != &machine_pin_type) {
        mp_raise_ValueError("expecting a pin");
    }
    machine_pin_obj_t *self = pin_in;
    return self->id;
}
