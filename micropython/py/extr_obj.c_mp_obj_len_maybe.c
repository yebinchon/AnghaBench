
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* unary_op ) (int ,int ) ;} ;
typedef TYPE_1__ mp_obj_type_t ;
typedef int mp_obj_t ;


 int GET_STR_LEN (int ,int ) ;
 int MP_OBJ_NEW_SMALL_INT (int ) ;
 int MP_OBJ_NULL ;
 int MP_UNARY_OP_LEN ;
 int l ;
 TYPE_1__* mp_obj_get_type (int ) ;
 scalar_t__ mp_obj_is_str (int ) ;
 scalar_t__ mp_obj_is_type (int ,int *) ;
 int mp_type_bytes ;
 int stub1 (int ,int ) ;

mp_obj_t mp_obj_len_maybe(mp_obj_t o_in) {
    if (


        mp_obj_is_str(o_in) ||

        mp_obj_is_type(o_in, &mp_type_bytes)) {
        GET_STR_LEN(o_in, l);
        return MP_OBJ_NEW_SMALL_INT(l);
    } else {
        mp_obj_type_t *type = mp_obj_get_type(o_in);
        if (type->unary_op != ((void*)0)) {
            return type->unary_op(MP_UNARY_OP_LEN, o_in);
        } else {
            return MP_OBJ_NULL;
        }
    }
}
