
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int mp_obj_t ;
typedef scalar_t__ mp_int_t ;


 int MP_OBJ_NEW_SMALL_INT (scalar_t__) ;
 int mp_obj_is_obj (int ) ;
 int mp_obj_new_int (scalar_t__) ;
 int mp_obj_new_int_from_uint (int ) ;

mp_obj_t mp_obj_id(mp_obj_t o_in) {
    mp_int_t id = (mp_int_t)o_in;
    if (!mp_obj_is_obj(o_in)) {
        return mp_obj_new_int(id);
    } else if (id >= 0) {




        return MP_OBJ_NEW_SMALL_INT(id);
    } else {



        return mp_obj_new_int_from_uint((mp_uint_t)id);
    }
}
