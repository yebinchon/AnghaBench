
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;
typedef scalar_t__ mp_int_t ;
typedef int byte ;


 int GET_STR_DATA_LEN (scalar_t__ const,int const*,int) ;
 int bad_implicit_conversion (scalar_t__) ;
 int len ;
 scalar_t__ memcmp (int const*,char const*,size_t) ;
 scalar_t__ mp_const_none ;
 scalar_t__ mp_obj_get_int (scalar_t__ const) ;
 int const* mp_obj_get_type (scalar_t__ const) ;
 int mp_obj_list_append (scalar_t__,int ) ;
 scalar_t__ mp_obj_new_list (int ,int *) ;
 int mp_obj_new_str_of_type (int const*,int const*,int) ;
 char* mp_obj_str_get_data (scalar_t__,size_t*) ;
 int mp_raise_ValueError (char*) ;
 int const* s ;
 scalar_t__ unichar_isspace (int const) ;

mp_obj_t mp_obj_str_split(size_t n_args, const mp_obj_t *args) {
    const mp_obj_type_t *self_type = mp_obj_get_type(args[0]);
    mp_int_t splits = -1;
    mp_obj_t sep = mp_const_none;
    if (n_args > 1) {
        sep = args[1];
        if (n_args > 2) {
            splits = mp_obj_get_int(args[2]);
        }
    }

    mp_obj_t res = mp_obj_new_list(0, ((void*)0));
    GET_STR_DATA_LEN(args[0], s, len);
    const byte *top = s + len;

    if (sep == mp_const_none) {



        while (s < top && unichar_isspace(*s)) s++;
        while (s < top && splits != 0) {
            const byte *start = s;
            while (s < top && !unichar_isspace(*s)) s++;
            mp_obj_list_append(res, mp_obj_new_str_of_type(self_type, start, s - start));
            if (s >= top) {
                break;
            }
            while (s < top && unichar_isspace(*s)) s++;
            if (splits > 0) {
                splits--;
            }
        }

        if (s < top) {
            mp_obj_list_append(res, mp_obj_new_str_of_type(self_type, s, top - s));
        }

    } else {

        if (mp_obj_get_type(sep) != self_type) {
            bad_implicit_conversion(sep);
        }

        size_t sep_len;
        const char *sep_str = mp_obj_str_get_data(sep, &sep_len);

        if (sep_len == 0) {
            mp_raise_ValueError("empty separator");
        }

        for (;;) {
            const byte *start = s;
            for (;;) {
                if (splits == 0 || s + sep_len > top) {
                    s = top;
                    break;
                } else if (memcmp(s, sep_str, sep_len) == 0) {
                    break;
                }
                s++;
            }
            mp_obj_list_append(res, mp_obj_new_str_of_type(self_type, start, s - start));
            if (s >= top) {
                break;
            }
            s += sep_len;
            if (splits > 0) {
                splits--;
            }
        }
    }

    return res;
}
