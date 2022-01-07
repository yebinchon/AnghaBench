
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buf; } ;
typedef TYPE_1__ vstr_t ;
typedef int mp_uint_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int len; int* buf; } ;
typedef TYPE_2__ mp_buffer_info_t ;
typedef int byte ;


 int MP_BUFFER_READ ;
 int mp_get_buffer_raise (int ,TYPE_2__*,int ) ;
 int mp_obj_new_str_from_vstr (int *,TYPE_1__*) ;
 int mp_raise_ValueError (char*) ;
 int mp_type_bytes ;
 scalar_t__ unichar_isxdigit (int) ;
 scalar_t__ unichar_xdigit_value (int) ;
 int vstr_init_len (TYPE_1__*,int) ;

mp_obj_t mod_binascii_unhexlify(mp_obj_t data) {
    mp_buffer_info_t bufinfo;
    mp_get_buffer_raise(data, &bufinfo, MP_BUFFER_READ);

    if ((bufinfo.len & 1) != 0) {
        mp_raise_ValueError("odd-length string");
    }
    vstr_t vstr;
    vstr_init_len(&vstr, bufinfo.len / 2);
    byte *in = bufinfo.buf, *out = (byte*)vstr.buf;
    byte hex_byte = 0;
    for (mp_uint_t i = bufinfo.len; i--;) {
        byte hex_ch = *in++;
        if (unichar_isxdigit(hex_ch)) {
            hex_byte += unichar_xdigit_value(hex_ch);
        } else {
            mp_raise_ValueError("non-hex digit found");
        }
        if (i & 1) {
            hex_byte <<= 4;
        } else {
            *out++ = hex_byte;
            hex_byte = 0;
        }
    }
    return mp_obj_new_str_from_vstr(&mp_type_bytes, &vstr);
}
