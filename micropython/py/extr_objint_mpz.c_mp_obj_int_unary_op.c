
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int mp_unary_op_t ;
typedef int mp_obj_t ;
struct TYPE_14__ {int neg; } ;
struct TYPE_13__ {TYPE_2__ mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;


 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 int MP_OBJ_NEW_SMALL_INT (int ) ;
 int MP_OBJ_NULL ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;






 TYPE_1__* mp_obj_int_new_mpz () ;
 int mp_obj_new_bool (int) ;
 int mpz_abs_inpl (TYPE_2__*,TYPE_2__*) ;
 int mpz_hash (TYPE_2__*) ;
 int mpz_is_zero (TYPE_2__*) ;
 int mpz_neg_inpl (TYPE_2__*,TYPE_2__*) ;
 int mpz_not_inpl (TYPE_2__*,TYPE_2__*) ;

mp_obj_t mp_obj_int_unary_op(mp_unary_op_t op, mp_obj_t o_in) {
    mp_obj_int_t *o = MP_OBJ_TO_PTR(o_in);
    switch (op) {
        case 132: return mp_obj_new_bool(!mpz_is_zero(&o->mpz));
        case 131: return MP_OBJ_NEW_SMALL_INT(mpz_hash(&o->mpz));
        case 128: return o_in;
        case 129: { mp_obj_int_t *o2 = mp_obj_int_new_mpz(); mpz_neg_inpl(&o2->mpz, &o->mpz); return MP_OBJ_FROM_PTR(o2); }
        case 130: { mp_obj_int_t *o2 = mp_obj_int_new_mpz(); mpz_not_inpl(&o2->mpz, &o->mpz); return MP_OBJ_FROM_PTR(o2); }
        case 133: {
            mp_obj_int_t *self = MP_OBJ_TO_PTR(o_in);
            if (self->mpz.neg == 0) {
                return o_in;
            }
            mp_obj_int_t *self2 = mp_obj_int_new_mpz();
            mpz_abs_inpl(&self2->mpz, &self->mpz);
            return MP_OBJ_FROM_PTR(self2);
        }
        default: return MP_OBJ_NULL;
    }
}
