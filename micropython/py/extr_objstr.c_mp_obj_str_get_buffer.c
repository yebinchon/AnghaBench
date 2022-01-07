
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ mp_uint_t ;
typedef int mp_obj_t ;
typedef int mp_int_t ;
struct TYPE_3__ {char typecode; int len; void* buf; } ;
typedef TYPE_1__ mp_buffer_info_t ;


 int GET_STR_DATA_LEN (int ,scalar_t__,int ) ;
 scalar_t__ MP_BUFFER_READ ;
 scalar_t__ str_data ;
 int str_len ;

mp_int_t mp_obj_str_get_buffer(mp_obj_t self_in, mp_buffer_info_t *bufinfo, mp_uint_t flags) {
    if (flags == MP_BUFFER_READ) {
        GET_STR_DATA_LEN(self_in, str_data, str_len);
        bufinfo->buf = (void*)str_data;
        bufinfo->len = str_len;
        bufinfo->typecode = 'B';
        return 0;
    } else {

        return 1;
    }
}
