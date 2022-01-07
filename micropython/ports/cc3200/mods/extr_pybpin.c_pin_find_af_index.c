
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int pin_obj_t ;
typedef scalar_t__ int8_t ;


 int mp_raise_ValueError (int ) ;
 int mpexception_value_invalid_arguments ;
 scalar_t__ pin_obj_find_af (int const*,int ,int ,int ) ;

int8_t pin_find_af_index (const pin_obj_t* pin, uint8_t fn, uint8_t unit, uint8_t type) {
    int8_t af = pin_obj_find_af(pin, fn, unit, type);
    if (af < 0) {
        mp_raise_ValueError(mpexception_value_invalid_arguments);
    }
    return af;
}
