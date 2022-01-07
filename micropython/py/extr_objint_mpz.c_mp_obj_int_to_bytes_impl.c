
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {int mpz; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef int byte ;


 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int assert (int ) ;
 int memset (int *,int ,size_t) ;
 int mp_obj_is_type (int ,int *) ;
 int mp_type_int ;
 int mpz_as_bytes (int *,int,size_t,int *) ;

void mp_obj_int_to_bytes_impl(mp_obj_t self_in, bool big_endian, size_t len, byte *buf) {
    assert(mp_obj_is_type(self_in, &mp_type_int));
    mp_obj_int_t *self = MP_OBJ_TO_PTR(self_in);
    memset(buf, 0, len);
    mpz_as_bytes(&self->mpz, big_endian, len, buf);
}
