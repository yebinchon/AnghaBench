
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 scalar_t__ MP_OBJ_NULL ;
 int mp_obj_get_type_str (scalar_t__) ;
 scalar_t__ mp_obj_len_maybe (scalar_t__) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_raise_TypeError (char*) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

mp_obj_t mp_obj_len(mp_obj_t o_in) {
    mp_obj_t len = mp_obj_len_maybe(o_in);
    if (len == MP_OBJ_NULL) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_raise_TypeError("object has no len");
        } else {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                "object of type '%s' has no len()", mp_obj_get_type_str(o_in)));
        }
    } else {
        return len;
    }
}
