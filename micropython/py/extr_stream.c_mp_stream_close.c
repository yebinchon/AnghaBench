
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mp_uint_t ;
struct TYPE_3__ {scalar_t__ (* ioctl ) (int ,int ,int ,int*) ;} ;
typedef TYPE_1__ mp_stream_p_t ;
typedef int mp_obj_t ;


 int MP_STREAM_CLOSE ;
 scalar_t__ MP_STREAM_ERROR ;
 int mp_const_none ;
 TYPE_1__* mp_get_stream (int ) ;
 int mp_raise_OSError (int) ;
 scalar_t__ stub1 (int ,int ,int ,int*) ;

mp_obj_t mp_stream_close(mp_obj_t stream) {
    const mp_stream_p_t *stream_p = mp_get_stream(stream);
    int error;
    mp_uint_t res = stream_p->ioctl(stream, MP_STREAM_CLOSE, 0, &error);
    if (res == MP_STREAM_ERROR) {
        mp_raise_OSError(error);
    }
    return mp_const_none;
}
