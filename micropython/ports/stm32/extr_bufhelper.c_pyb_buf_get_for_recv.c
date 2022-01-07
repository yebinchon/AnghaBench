
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; int buf; } ;
typedef TYPE_1__ vstr_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int len; int buf; } ;
typedef TYPE_2__ mp_buffer_info_t ;


 int MP_BUFFER_WRITE ;
 int MP_OBJ_NULL ;
 int mp_get_buffer_raise (int ,TYPE_2__*,int ) ;
 int mp_obj_get_int (int ) ;
 scalar_t__ mp_obj_is_int (int ) ;
 int vstr_init_len (TYPE_1__*,int ) ;

mp_obj_t pyb_buf_get_for_recv(mp_obj_t o, vstr_t *vstr) {
    if (mp_obj_is_int(o)) {

        vstr_init_len(vstr, mp_obj_get_int(o));
        return MP_OBJ_NULL;
    } else {

        mp_buffer_info_t bufinfo;
        mp_get_buffer_raise(o, &bufinfo, MP_BUFFER_WRITE);
        vstr->buf = bufinfo.buf;
        vstr->len = bufinfo.len;
        return o;
    }
}
