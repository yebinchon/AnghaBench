
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int mp_int_t ;
typedef int mp_const_obj_t ;


 int MP_OBJ_SMALL_INT_VALUE (int ) ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 scalar_t__ mp_obj_is_small_int (int ) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_OverflowError ;
 scalar_t__ mpz_as_int_checked (int *,int *) ;

mp_int_t mp_obj_int_get_checked(mp_const_obj_t self_in) {
    if (mp_obj_is_small_int(self_in)) {
        return MP_OBJ_SMALL_INT_VALUE(self_in);
    } else {
        const mp_obj_int_t *self = MP_OBJ_TO_PTR(self_in);
        mp_int_t value;
        if (mpz_as_int_checked(&self->mpz, &value)) {
            return value;
        } else {

            mp_raise_msg(&mp_type_OverflowError, "overflow converting long int to machine word");
        }
    }
}
