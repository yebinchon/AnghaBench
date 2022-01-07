
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pyb_pin_obj_t ;
typedef int * mp_obj_t ;


 int * mp_obj_get_type (int *) ;
 int mp_raise_ValueError (char*) ;
 int pyb_pin_type ;

pyb_pin_obj_t *mp_obj_get_pin_obj(mp_obj_t pin_in) {
    if (mp_obj_get_type(pin_in) != &pyb_pin_type) {
        mp_raise_ValueError("expecting a pin");
    }
    pyb_pin_obj_t *self = pin_in;
    return self;
}
