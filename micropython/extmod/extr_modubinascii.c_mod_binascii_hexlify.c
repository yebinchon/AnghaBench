
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ buf; } ;
typedef TYPE_1__ vstr_t ;
typedef scalar_t__ mp_uint_t ;
typedef int mp_obj_t ;
struct TYPE_7__ {int len; int* buf; } ;
typedef TYPE_2__ mp_buffer_info_t ;
typedef int byte ;


 int MP_BUFFER_READ ;
 int mp_const_empty_bytes ;
 int mp_get_buffer_raise (int const,TYPE_2__*,int ) ;
 int mp_obj_new_str_from_vstr (int *,TYPE_1__*) ;
 char* mp_obj_str_get_str (int const) ;
 int mp_type_bytes ;
 int vstr_init_len (TYPE_1__*,size_t) ;

mp_obj_t mod_binascii_hexlify(size_t n_args, const mp_obj_t *args) {


    const char *sep = ((void*)0);
    mp_buffer_info_t bufinfo;
    mp_get_buffer_raise(args[0], &bufinfo, MP_BUFFER_READ);



    if (bufinfo.len == 0) {
        return mp_const_empty_bytes;
    }

    vstr_t vstr;
    size_t out_len = bufinfo.len * 2;
    if (n_args > 1) {

        out_len += bufinfo.len - 1;
        sep = mp_obj_str_get_str(args[1]);
    }
    vstr_init_len(&vstr, out_len);
    byte *in = bufinfo.buf, *out = (byte*)vstr.buf;
    for (mp_uint_t i = bufinfo.len; i--;) {
        byte d = (*in >> 4);
        if (d > 9) {
            d += 'a' - '9' - 1;
        }
        *out++ = d + '0';
        d = (*in++ & 0xf);
        if (d > 9) {
            d += 'a' - '9' - 1;
        }
        *out++ = d + '0';
        if (sep != ((void*)0) && i != 0) {
            *out++ = *sep;
        }
    }
    return mp_obj_new_str_from_vstr(&mp_type_bytes, &vstr);
}
