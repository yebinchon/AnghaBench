
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qstr ;
typedef scalar_t__ mp_obj_t ;


 int DEBUG_OP_printf (char*,scalar_t__,int ) ;
 scalar_t__ MP_OBJ_NULL ;
 int mp_load_method (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ mp_obj_new_bound_meth (scalar_t__,scalar_t__) ;
 int qstr_str (int ) ;

mp_obj_t mp_load_attr(mp_obj_t base, qstr attr) {
    DEBUG_OP_printf("load attr %p.%s\n", base, qstr_str(attr));

    mp_obj_t dest[2];
    mp_load_method(base, attr, dest);
    if (dest[1] == MP_OBJ_NULL) {

        return dest[0];
    } else {

        return mp_obj_new_bound_meth(dest[0], dest[1]);
    }
}
