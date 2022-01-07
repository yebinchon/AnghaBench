
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_binary_op_t ;


 scalar_t__ MP_BINARY_OP_MULTIPLY ;
 scalar_t__ MP_OBJ_NEW_SMALL_INT (int) ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ mp_binary_op (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ mp_const_false ;
 scalar_t__ mp_const_true ;
 scalar_t__ mp_obj_is_str_or_bytes (scalar_t__) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 int mp_type_list ;
 int mp_type_tuple ;

mp_obj_t mp_obj_int_binary_op_extra_cases(mp_binary_op_t op, mp_obj_t lhs_in, mp_obj_t rhs_in) {
    if (rhs_in == mp_const_false) {

        return mp_binary_op(op, lhs_in, MP_OBJ_NEW_SMALL_INT(0));
    } else if (rhs_in == mp_const_true) {

        return mp_binary_op(op, lhs_in, MP_OBJ_NEW_SMALL_INT(1));
    } else if (op == MP_BINARY_OP_MULTIPLY) {
        if (mp_obj_is_str_or_bytes(rhs_in) || mp_obj_is_type(rhs_in, &mp_type_tuple) || mp_obj_is_type(rhs_in, &mp_type_list)) {

            return mp_binary_op(op, rhs_in, lhs_in);
        }
    }
    return MP_OBJ_NULL;
}
