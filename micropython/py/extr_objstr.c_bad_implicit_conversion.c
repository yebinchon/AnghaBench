
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ qstr ;
typedef int mp_obj_t ;
struct TYPE_2__ {scalar_t__ name; } ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 scalar_t__ const MP_QSTR_bytes ;
 scalar_t__ const MP_QSTR_str ;
 TYPE_1__* mp_obj_get_type (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,scalar_t__ const,scalar_t__ const) ;
 int mp_raise_TypeError (char*) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

void bad_implicit_conversion(mp_obj_t self_in) {
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        mp_raise_TypeError("can't convert to str implicitly");
    } else {
        const qstr src_name = mp_obj_get_type(self_in)->name;
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_TypeError,
            "can't convert '%q' object to %q implicitly",
            src_name, src_name == MP_QSTR_str ? MP_QSTR_bytes : MP_QSTR_str));
    }
}
