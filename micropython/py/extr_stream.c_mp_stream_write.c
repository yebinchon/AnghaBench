
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int mp_obj_t ;
typedef int byte ;


 int MP_OBJ_NEW_SMALL_INT (int ) ;
 int mp_const_none ;
 scalar_t__ mp_is_nonblocking_error (int) ;
 int mp_raise_OSError (int) ;
 int mp_stream_rw (int ,void*,size_t,int*,int ) ;

mp_obj_t mp_stream_write(mp_obj_t self_in, const void *buf, size_t len, byte flags) {
    int error;
    mp_uint_t out_sz = mp_stream_rw(self_in, (void*)buf, len, &error, flags);
    if (error != 0) {
        if (mp_is_nonblocking_error(error)) {



            return mp_const_none;
        }
        mp_raise_OSError(error);
    } else {
        return MP_OBJ_NEW_SMALL_INT(out_sz);
    }
}
