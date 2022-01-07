
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {int mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int byte ;


 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 TYPE_1__* mp_obj_int_new_mpz () ;
 int mpz_set_from_bytes (int *,int,size_t,int const*) ;

mp_obj_t mp_obj_int_from_bytes_impl(bool big_endian, size_t len, const byte *buf) {
    mp_obj_int_t *o = mp_obj_int_new_mpz();
    mpz_set_from_bytes(&o->mpz, big_endian, len, buf);
    return MP_OBJ_FROM_PTR(o);
}
