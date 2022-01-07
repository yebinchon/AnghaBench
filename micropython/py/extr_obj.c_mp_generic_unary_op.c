
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_unary_op_t ;
typedef int mp_uint_t ;
typedef int mp_obj_t ;


 int MP_OBJ_NEW_SMALL_INT (int ) ;
 int MP_OBJ_NULL ;


mp_obj_t mp_generic_unary_op(mp_unary_op_t op, mp_obj_t o_in) {
    switch (op) {
        case 128: return MP_OBJ_NEW_SMALL_INT((mp_uint_t)o_in);
        default: return MP_OBJ_NULL;
    }
}
