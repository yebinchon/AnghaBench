
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pin_obj_t ;
typedef int * mp_obj_t ;


 scalar_t__ mp_obj_is_type (int *,int *) ;
 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;
 int pin_board_pins_locals_dict ;
 int * pin_find_named_pin (int *,int *) ;
 int pin_type ;

pin_obj_t *pin_find(mp_obj_t user_obj) {
    pin_obj_t *pin_obj;


    if (mp_obj_is_type(user_obj, &pin_type)) {
        pin_obj = user_obj;
        return pin_obj;
    }


    pin_obj = pin_find_named_pin(&pin_board_pins_locals_dict, user_obj);
    if (pin_obj) {
        return pin_obj;
    }

    mp_raise_ValueError(mpexception_value_invalid_arguments);
}
