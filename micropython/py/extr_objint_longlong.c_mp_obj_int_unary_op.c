
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_1__ ;


typedef int mp_unary_op_t ;
typedef TYPE_1__* mp_obj_t ;
struct TYPE_13__ {int val; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int mp_int_t ;


 TYPE_1__* MP_OBJ_FROM_PTR (TYPE_1__*) ;
 TYPE_1__* MP_OBJ_NEW_SMALL_INT (int ) ;
 TYPE_1__* MP_OBJ_NULL ;
 TYPE_1__* MP_OBJ_TO_PTR (TYPE_1__*) ;






 TYPE_1__* mp_obj_new_bool (int) ;
 TYPE_1__* mp_obj_new_int_from_ll (int ) ;

mp_obj_t mp_obj_int_unary_op(mp_unary_op_t op, mp_obj_t o_in) {
    mp_obj_int_t *o = o_in;
    switch (op) {
        case 132: return mp_obj_new_bool(o->val != 0);



        case 131: return MP_OBJ_NEW_SMALL_INT((mp_int_t)o->val);

        case 128: return o_in;
        case 129: return mp_obj_new_int_from_ll(-o->val);
        case 130: return mp_obj_new_int_from_ll(~o->val);
        case 133: {
            mp_obj_int_t *self = MP_OBJ_TO_PTR(o_in);
            if (self->val >= 0) {
                return o_in;
            }
            self = mp_obj_new_int_from_ll(self->val);

            self->val = -self->val;
            return MP_OBJ_FROM_PTR(self);
        }
        default: return MP_OBJ_NULL;
    }
}
