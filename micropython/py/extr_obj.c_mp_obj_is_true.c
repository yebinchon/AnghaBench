
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ (* unary_op ) (int ,scalar_t__) ;} ;
typedef TYPE_1__ mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;


 scalar_t__ MP_OBJ_NEW_SMALL_INT (int ) ;
 scalar_t__ MP_OBJ_NULL ;
 int MP_UNARY_OP_BOOL ;
 scalar_t__ mp_const_false ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_const_true ;
 TYPE_1__* mp_obj_get_type (scalar_t__) ;
 scalar_t__ mp_obj_is_small_int (scalar_t__) ;
 scalar_t__ mp_obj_len_maybe (scalar_t__) ;
 scalar_t__ stub1 (int ,scalar_t__) ;

bool mp_obj_is_true(mp_obj_t arg) {
    if (arg == mp_const_false) {
        return 0;
    } else if (arg == mp_const_true) {
        return 1;
    } else if (arg == mp_const_none) {
        return 0;
    } else if (mp_obj_is_small_int(arg)) {
        if (arg == MP_OBJ_NEW_SMALL_INT(0)) {
            return 0;
        } else {
            return 1;
        }
    } else {
        mp_obj_type_t *type = mp_obj_get_type(arg);
        if (type->unary_op != ((void*)0)) {
            mp_obj_t result = type->unary_op(MP_UNARY_OP_BOOL, arg);
            if (result != MP_OBJ_NULL) {
                return result == mp_const_true;
            }
        }

        mp_obj_t len = mp_obj_len_maybe(arg);
        if (len != MP_OBJ_NULL) {

            return len != MP_OBJ_NEW_SMALL_INT(0);
        } else {

            return 1;
        }
    }
}
