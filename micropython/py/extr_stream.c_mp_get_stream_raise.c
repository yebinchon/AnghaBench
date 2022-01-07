
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * ioctl; int * write; int * read; } ;
typedef TYPE_1__ mp_stream_p_t ;
struct TYPE_6__ {TYPE_1__* protocol; } ;
typedef TYPE_2__ mp_obj_type_t ;
typedef int mp_obj_t ;


 int MP_STREAM_OP_IOCTL ;
 int MP_STREAM_OP_READ ;
 int MP_STREAM_OP_WRITE ;
 TYPE_2__* mp_obj_get_type (int ) ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_OSError ;

const mp_stream_p_t *mp_get_stream_raise(mp_obj_t self_in, int flags) {
    mp_obj_type_t *type = mp_obj_get_type(self_in);
    const mp_stream_p_t *stream_p = type->protocol;
    if (stream_p == ((void*)0)
        || ((flags & MP_STREAM_OP_READ) && stream_p->read == ((void*)0))
        || ((flags & MP_STREAM_OP_WRITE) && stream_p->write == ((void*)0))
        || ((flags & MP_STREAM_OP_IOCTL) && stream_p->ioctl == ((void*)0))) {

        mp_raise_msg(&mp_type_OSError, "stream operation not supported");
    }
    return stream_p;
}
