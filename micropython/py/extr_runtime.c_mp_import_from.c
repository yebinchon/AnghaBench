
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint ;
typedef int qstr ;
typedef scalar_t__ mp_obj_t ;


 int DEBUG_printf (char*,scalar_t__,char const*) ;
 int MP_OBJ_NEW_SMALL_INT (int ) ;
 scalar_t__ MP_OBJ_NULL ;
 int MP_QSTR___name__ ;
 int memcpy (char*,char const*,size_t) ;
 int mp_const_true ;
 scalar_t__ mp_import_name (int ,int ,int ) ;
 int mp_load_method_maybe (scalar_t__,int ,scalar_t__*) ;
 char* mp_local_alloc (size_t const) ;
 int mp_local_free (char*) ;
 int mp_obj_is_package (scalar_t__) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int ) ;
 char* mp_obj_str_get_data (scalar_t__,size_t*) ;
 int mp_type_ImportError ;
 int nlr_raise (int ) ;
 int qstr_from_strn (char*,size_t const) ;
 size_t qstr_len (int ) ;
 char const* qstr_str (int ) ;

mp_obj_t mp_import_from(mp_obj_t module, qstr name) {
    DEBUG_printf("import from %p %s\n", module, qstr_str(name));

    mp_obj_t dest[2];

    mp_load_method_maybe(module, name, dest);

    if (dest[1] != MP_OBJ_NULL) {

import_error:
        nlr_raise(mp_obj_new_exception_msg_varg(&mp_type_ImportError, "cannot import name %q", name));
    }

    if (dest[0] != MP_OBJ_NULL) {
        return dest[0];
    }
    goto import_error;


}
