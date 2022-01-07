
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_4__ {int len; char typecode; int * buf; } ;
typedef TYPE_1__ mp_buffer_info_t ;
typedef int byte ;


 int MP_BUFFER_READ ;
 int mp_get_buffer_raise (int ,TYPE_1__*,int ) ;
 int mp_obj_get_int (int ) ;
 scalar_t__ mp_obj_is_int (int ) ;

void pyb_buf_get_for_send(mp_obj_t o, mp_buffer_info_t *bufinfo, byte *tmp_data) {
    if (mp_obj_is_int(o)) {
        tmp_data[0] = mp_obj_get_int(o);
        bufinfo->buf = tmp_data;
        bufinfo->len = 1;
        bufinfo->typecode = 'B';
    } else {
        mp_get_buffer_raise(o, bufinfo, MP_BUFFER_READ);
    }
}
