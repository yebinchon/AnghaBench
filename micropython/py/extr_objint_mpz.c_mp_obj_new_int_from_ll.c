
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {int mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;


 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 TYPE_1__* mp_obj_int_new_mpz () ;
 int mpz_set_from_ll (int *,long long,int) ;

mp_obj_t mp_obj_new_int_from_ll(long long val) {
    mp_obj_int_t *o = mp_obj_int_new_mpz();
    mpz_set_from_ll(&o->mpz, val, 1);
    return MP_OBJ_FROM_PTR(o);
}
