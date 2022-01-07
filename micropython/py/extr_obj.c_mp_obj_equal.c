
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* binary_op ) (int ,scalar_t__,scalar_t__) ;} ;
typedef TYPE_1__ mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;


 int BytesWarning ;
 int MP_BINARY_OP_EQUAL ;
 scalar_t__ MP_OBJ_NULL ;
 int MP_WARN_CAT (int ) ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_const_true ;
 TYPE_1__* mp_obj_get_type (scalar_t__) ;
 int mp_obj_is_float (scalar_t__) ;
 scalar_t__ mp_obj_is_small_int (scalar_t__) ;
 scalar_t__ mp_obj_is_str (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 int mp_obj_str_equal (scalar_t__,scalar_t__) ;
 int mp_type_bytes ;
 int mp_type_complex ;
 int mp_warning (int ,char*) ;
 scalar_t__ stub1 (int ,scalar_t__,scalar_t__) ;

bool mp_obj_equal(mp_obj_t o1, mp_obj_t o2) {


    if (o1 == o2






        ) {
        return 1;
    }
    if (o1 == mp_const_none || o2 == mp_const_none) {
        return 0;
    }


    if (mp_obj_is_small_int(o1)) {
        if (mp_obj_is_small_int(o2)) {

            return 0;
        } else {
            mp_obj_t temp = o2; o2 = o1; o1 = temp;


        }
    }


    if (mp_obj_is_str(o1)) {
        if (mp_obj_is_str(o2)) {

            return mp_obj_str_equal(o1, o2);
        } else {

            goto str_cmp_err;
        }
    } else if (mp_obj_is_str(o2)) {

    str_cmp_err:





        return 0;
    }


    mp_obj_type_t *type = mp_obj_get_type(o1);
    if (type->binary_op != ((void*)0)) {
        mp_obj_t r = type->binary_op(MP_BINARY_OP_EQUAL, o1, o2);
        if (r != MP_OBJ_NULL) {
            return r == mp_const_true ? 1 : 0;
        }
    }



    return 0;
}
