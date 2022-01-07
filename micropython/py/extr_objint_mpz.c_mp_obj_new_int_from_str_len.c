
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
 size_t mpz_set_from_str (int *,char const*,size_t,int,unsigned int) ;

mp_obj_t mp_obj_new_int_from_str_len(const char **str, size_t len, bool neg, unsigned int base) {
    mp_obj_int_t *o = mp_obj_int_new_mpz();
    size_t n = mpz_set_from_str(&o->mpz, *str, len, neg, base);
    *str += n;
    return MP_OBJ_FROM_PTR(o);
}
