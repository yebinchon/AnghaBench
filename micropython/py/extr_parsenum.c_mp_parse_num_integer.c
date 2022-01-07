
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vstr_t ;
typedef char mp_uint_t ;
typedef int mp_print_t ;
typedef int mp_obj_t ;
typedef int mp_lexer_t ;
typedef int mp_int_t ;
typedef char byte ;


 scalar_t__ MICROPY_ERROR_REPORTING ;
 scalar_t__ MICROPY_ERROR_REPORTING_NORMAL ;
 scalar_t__ MICROPY_ERROR_REPORTING_TERSE ;
 int MP_OBJ_NEW_SMALL_INT (int) ;
 int MP_SMALL_INT_FITS (int) ;
 int mp_obj_new_exception_arg1 (int *,int ) ;
 int mp_obj_new_exception_msg (int *,char*) ;
 int mp_obj_new_exception_msg_varg (int *,char*,int) ;
 int mp_obj_new_int_from_str_len (char const**,int,int,int) ;
 int mp_obj_new_str_from_vstr (int *,int *) ;
 int mp_parse_num_base (char const*,int,int*) ;
 int mp_printf (int *,char*,int) ;
 int mp_raise_ValueError (char*) ;
 scalar_t__ mp_small_int_mul_overflow (int,int) ;
 int mp_str_print_quoted (int *,char const*,int,int) ;
 int mp_type_ValueError ;
 int mp_type_str ;
 int raise_exc (int ,int *) ;
 scalar_t__ unichar_isspace (char const) ;
 int vstr_init_print (int *,int,int *) ;

mp_obj_t mp_parse_num_integer(const char *restrict str_, size_t len, int base, mp_lexer_t *lex) {
    const byte *restrict str = (const byte *)str_;
    const byte *restrict top = str + len;
    bool neg = 0;
    mp_obj_t ret_val;


    if ((base != 0 && base < 2) || base > 36) {

        mp_raise_ValueError("int() arg 2 must be >= 2 and <= 36");
    }


    for (; str < top && unichar_isspace(*str); str++) {
    }


    if (str < top) {
        if (*str == '+') {
            str++;
        } else if (*str == '-') {
            str++;
            neg = 1;
        }
    }


    str += mp_parse_num_base((const char*)str, top - str, &base);


    mp_int_t int_val = 0;
    const byte *restrict str_val_start = str;
    for (; str < top; str++) {

        mp_uint_t dig = *str;
        if ('0' <= dig && dig <= '9') {
            dig -= '0';
        } else if (dig == '_') {
            continue;
        } else {
            dig |= 0x20;
            if ('a' <= dig && dig <= 'z') {
                dig -= 'a' - 10;
            } else {

                break;
            }
        }
        if (dig >= (mp_uint_t)base) {
            break;
        }


        if (mp_small_int_mul_overflow(int_val, base)) {
            goto overflow;
        }
        int_val = int_val * base + dig;
        if (!MP_SMALL_INT_FITS(int_val)) {
            goto overflow;
        }
    }


    if (neg) {
        int_val = -int_val;
    }


    ret_val = MP_OBJ_NEW_SMALL_INT(int_val);

have_ret_val:

    if (str == str_val_start) {
        goto value_error;
    }


    for (; str < top && unichar_isspace(*str); str++) {
    }


    if (str != top) {
        goto value_error;
    }


    return ret_val;

overflow:

    {
        const char *s2 = (const char*)str_val_start;
        ret_val = mp_obj_new_int_from_str_len(&s2, top - str_val_start, neg, base);
        str = (const byte*)s2;
        goto have_ret_val;
    }

value_error:
    if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_TERSE) {
        mp_obj_t exc = mp_obj_new_exception_msg(&mp_type_ValueError,
            "invalid syntax for integer");
        raise_exc(exc, lex);
    } else if (MICROPY_ERROR_REPORTING == MICROPY_ERROR_REPORTING_NORMAL) {
        mp_obj_t exc = mp_obj_new_exception_msg_varg(&mp_type_ValueError,
            "invalid syntax for integer with base %d", base);
        raise_exc(exc, lex);
    } else {
        vstr_t vstr;
        mp_print_t print;
        vstr_init_print(&vstr, 50, &print);
        mp_printf(&print, "invalid syntax for integer with base %d: ", base);
        mp_str_print_quoted(&print, str_val_start, top - str_val_start, 1);
        mp_obj_t exc = mp_obj_new_exception_arg1(&mp_type_ValueError,
            mp_obj_new_str_from_vstr(&mp_type_str, &vstr));
        raise_exc(exc, lex);
    }
}
