
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef int mp_int_t ;


 int MP_OBJ_NEW_SMALL_INT (int ) ;
 scalar_t__ MP_SMALL_INT_FITS (int ) ;
 int mp_const_none ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_OverflowError ;

mp_obj_t mp_obj_new_int(mp_int_t value) {
    if (MP_SMALL_INT_FITS(value)) {
        return MP_OBJ_NEW_SMALL_INT(value);
    }
    mp_raise_msg(&mp_type_OverflowError, "small int overflow");
    return mp_const_none;
}
