
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vstr_t ;
typedef int qstr ;
typedef int mp_print_t ;
typedef int mp_obj_type_t ;
typedef int mp_obj_t ;
struct TYPE_6__ {int hash; scalar_t__ data; } ;
typedef TYPE_1__ mp_obj_str_t ;
struct TYPE_7__ {int len; scalar_t__ buf; } ;
typedef TYPE_2__ mp_buffer_info_t ;


 int GET_STR_DATA_LEN (int const,scalar_t__,int ) ;
 int GET_STR_HASH (int const,int ) ;
 int MP_BUFFER_READ ;
 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 int MP_OBJ_NEW_QSTR (int ) ;
 TYPE_1__* MP_OBJ_TO_PTR (int ) ;
 int MP_QSTR_ ;
 int MP_QSTRnull ;
 int PRINT_STR ;
 int mp_arg_check_num (size_t,size_t,int ,int,int) ;
 int mp_arg_error_unimpl_kw () ;
 int mp_get_buffer_raise (int const,TYPE_2__*,int ) ;
 int mp_obj_is_type (int const,int *) ;
 int mp_obj_new_str (scalar_t__,int ) ;
 int mp_obj_new_str_copy (int const*,int *,int ) ;
 int mp_obj_new_str_from_vstr (int const*,int *) ;
 int mp_obj_print_helper (int *,int const,int ) ;
 int mp_raise_msg (int *,int *) ;
 int mp_type_UnicodeError ;
 int mp_type_bytes ;
 int qstr_compute_hash (scalar_t__,int ) ;
 int qstr_find_strn (char const*,int ) ;
 scalar_t__ str_data ;
 int str_hash ;
 int str_len ;
 int utf8_check (scalar_t__,int ) ;
 int vstr_init_print (int *,int,int *) ;

mp_obj_t mp_obj_str_make_new(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args) {






    mp_arg_check_num(n_args, n_kw, 0, 3, 0);

    switch (n_args) {
        case 0:
            return MP_OBJ_NEW_QSTR(MP_QSTR_);

        case 1: {
            vstr_t vstr;
            mp_print_t print;
            vstr_init_print(&vstr, 16, &print);
            mp_obj_print_helper(&print, args[0], PRINT_STR);
            return mp_obj_new_str_from_vstr(type, &vstr);
        }

        default:

            if (mp_obj_is_type(args[0], &mp_type_bytes)) {
                GET_STR_DATA_LEN(args[0], str_data, str_len);
                GET_STR_HASH(args[0], str_hash);
                if (str_hash == 0) {
                    str_hash = qstr_compute_hash(str_data, str_len);
                }







                qstr q = qstr_find_strn((const char*)str_data, str_len);
                if (q != MP_QSTRnull) {
                    return MP_OBJ_NEW_QSTR(q);
                }

                mp_obj_str_t *o = MP_OBJ_TO_PTR(mp_obj_new_str_copy(type, ((void*)0), str_len));
                o->data = str_data;
                o->hash = str_hash;
                return MP_OBJ_FROM_PTR(o);
            } else {
                mp_buffer_info_t bufinfo;
                mp_get_buffer_raise(args[0], &bufinfo, MP_BUFFER_READ);





                return mp_obj_new_str(bufinfo.buf, bufinfo.len);
            }
    }
}
