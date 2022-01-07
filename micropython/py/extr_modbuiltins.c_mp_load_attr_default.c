
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qstr ;
typedef scalar_t__ mp_obj_t ;


 scalar_t__ MP_OBJ_NULL ;
 int mp_load_method (scalar_t__,int ,scalar_t__*) ;
 int mp_load_method_maybe (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ mp_obj_new_bound_meth (scalar_t__,scalar_t__) ;
 int stub1 (scalar_t__,int ,scalar_t__*) ;

__attribute__((used)) static inline mp_obj_t mp_load_attr_default(mp_obj_t base, qstr attr, mp_obj_t defval) {
    mp_obj_t dest[2];

    ((defval == MP_OBJ_NULL) ? mp_load_method : mp_load_method_maybe)(base, attr, dest);
    if (dest[0] == MP_OBJ_NULL) {
        return defval;
    } else if (dest[1] == MP_OBJ_NULL) {

        return dest[0];
    } else {

        return mp_obj_new_bound_meth(dest[0], dest[1]);
    }
}
