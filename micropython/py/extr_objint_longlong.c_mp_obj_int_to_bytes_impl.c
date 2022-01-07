
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mp_obj_t ;
struct TYPE_5__ {long long val; } ;
typedef TYPE_1__ mp_obj_int_t ;
typedef long long byte ;


 int assert (int ) ;
 int mp_obj_is_type (TYPE_1__*,int *) ;
 int mp_type_int ;

void mp_obj_int_to_bytes_impl(mp_obj_t self_in, bool big_endian, size_t len, byte *buf) {
    assert(mp_obj_is_type(self_in, &mp_type_int));
    mp_obj_int_t *self = self_in;
    long long val = self->val;
    if (big_endian) {
        byte *b = buf + len;
        while (b > buf) {
            *--b = val;
            val >>= 8;
        }
    } else {
        for (; len > 0; --len) {
            *buf++ = val;
            val >>= 8;
        }
    }
}
