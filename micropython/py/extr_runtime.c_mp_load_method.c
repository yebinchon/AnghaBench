
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_2__ {int name; } ;
typedef TYPE_1__ mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;


 int DEBUG_OP_printf (char*,scalar_t__,int ) ;
 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_TO_PTR (scalar_t__) ;
 int mp_load_method_maybe (scalar_t__,int ,scalar_t__*) ;
 int mp_obj_get_type_str (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ,int ) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_AttributeError ;
 int mp_type_type ;
 int nlr_raise (int ) ;
 int qstr_str (int ) ;

void mp_load_method(mp_obj_t base, qstr attr, mp_obj_t *dest) {
    DEBUG_OP_printf("load method %p.%s\n", base, qstr_str(attr));

    mp_load_method_maybe(base, attr, dest);

    if (dest[0] == MP_OBJ_NULL) {

        if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
            mp_raise_msg(&mp_type_AttributeError, "no such attribute");
        } else {

            if (mp_obj_is_type(base, &mp_type_type)) {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_AttributeError,
                    "type object '%q' has no attribute '%q'",
                    ((mp_obj_type_t*)MP_OBJ_TO_PTR(base))->name, attr));
            } else {
                nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_AttributeError,
                    "'%s' object has no attribute '%q'",
                    mp_obj_get_type_str(base), attr));
            }
        }
    }
}
