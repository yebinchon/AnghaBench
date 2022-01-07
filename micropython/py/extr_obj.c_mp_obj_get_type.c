
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_type_t ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ mp_obj_base_t ;
typedef int mp_const_obj_t ;


 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 scalar_t__ mp_obj_is_float (int ) ;
 scalar_t__ mp_obj_is_qstr (int ) ;
 scalar_t__ mp_obj_is_small_int (int ) ;
 int mp_type_float ;
 int mp_type_int ;
 int mp_type_str ;

mp_obj_type_t *mp_obj_get_type(mp_const_obj_t o_in) {
    if (mp_obj_is_small_int(o_in)) {
        return (mp_obj_type_t*)&mp_type_int;
    } else if (mp_obj_is_qstr(o_in)) {
        return (mp_obj_type_t*)&mp_type_str;




    } else {
        const mp_obj_base_t *o = MP_OBJ_TO_PTR(o_in);
        return (mp_obj_type_t*)o->type;
    }
}
