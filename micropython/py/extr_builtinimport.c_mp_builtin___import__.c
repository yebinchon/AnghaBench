
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qstr ;
typedef scalar_t__ mp_obj_t ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_SMALL_INT_VALUE (scalar_t__ const) ;
 int mp_module_call_init (int ,scalar_t__) ;
 scalar_t__ mp_module_get (int ) ;
 scalar_t__ mp_module_search_umodule (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 int mp_obj_str_get_qstr (scalar_t__ const) ;
 int mp_raise_NotImplementedError (char*) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_ImportError ;
 int nlr_raise (int ) ;
 int qstr_str (int ) ;

mp_obj_t mp_builtin___import__(size_t n_args, const mp_obj_t *args) {

    if (n_args >= 5 && MP_OBJ_SMALL_INT_VALUE(args[4]) != 0) {
        mp_raise_NotImplementedError("relative import");
    }


    qstr module_name_qstr = mp_obj_str_get_qstr(args[0]);
    mp_obj_t module_obj = mp_module_get(module_name_qstr);
    if (module_obj != MP_OBJ_NULL) {
        return module_obj;
    }
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        mp_raise_msg(&mp_type_ImportError, "module not found");
    } else {
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ImportError,
            "no module named '%q'", module_name_qstr));
    }
}
