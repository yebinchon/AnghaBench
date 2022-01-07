
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t mp_uint_t ;
struct TYPE_3__ {int name; } ;
typedef TYPE_1__ mp_obj_type_t ;
typedef int mp_obj_t ;
typedef size_t mp_int_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 size_t MP_OBJ_SMALL_INT_VALUE (int ) ;
 int mp_obj_get_int_maybe (int ,size_t*) ;
 int mp_obj_get_type_str (int ) ;
 scalar_t__ mp_obj_is_small_int (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ,...) ;
 int mp_raise_TypeError (char*) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_IndexError ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

size_t mp_get_index(const mp_obj_type_t *type, size_t len, mp_obj_t index, bool is_slice) {
    mp_int_t i;
    if (mp_obj_is_small_int(index)) {
        i = MP_OBJ_SMALL_INT_VALUE(index);
    } else if (!mp_obj_get_int_maybe(index, &i)) {
        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_raise_TypeError("indices must be integers");
        } else {
            nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
                "%q indices must be integers, not %s",
                type->name, mp_obj_get_type_str(index)));
        }
    }

    if (i < 0) {
        i += len;
    }
    if (is_slice) {
        if (i < 0) {
            i = 0;
        } else if ((mp_uint_t)i > len) {
            i = len;
        }
    } else {
        if (i < 0 || (mp_uint_t)i >= len) {
            if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
                mp_raise_msg(&mp_type_IndexError, "index out of range");
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_IndexError,
                    "%q index out of range", type->name));
            }
        }
    }


    return (size_t)i;
}
