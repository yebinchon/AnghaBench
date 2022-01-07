
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef scalar_t__ mp_uint_t ;
typedef int mp_obj_t ;
typedef int mp_int_t ;
typedef int byte ;


 scalar_t__ MP_ALIGN (int,size_t) ;
 scalar_t__ MP_SMALL_INT_MAX ;
 scalar_t__ MP_SMALL_INT_MIN ;
 scalar_t__ is_signed (char) ;
 long long mp_binary_get_int (size_t,scalar_t__,int,int *) ;
 size_t mp_binary_get_size (char,char,size_t*) ;
 int mp_obj_new_float (float) ;
 int mp_obj_new_int (int ) ;
 int mp_obj_new_int_from_ll (long long) ;
 int mp_obj_new_int_from_uint (scalar_t__) ;
 int mp_obj_new_int_from_ull (long long) ;
 int mp_obj_new_str (char const*,int ) ;
 int strlen (char const*) ;

mp_obj_t mp_binary_get_val(char struct_type, char val_type, byte *p_base, byte **ptr) {
    byte *p = *ptr;
    size_t align;

    size_t size = mp_binary_get_size(struct_type, val_type, &align);
    if (struct_type == '@') {

        p = p_base + (uintptr_t)MP_ALIGN(p - p_base, align);



        struct_type = '>';

    }
    *ptr = p + size;

    long long val = mp_binary_get_int(size, is_signed(val_type), (struct_type == '>'), p);

    if (val_type == 'O') {
        return (mp_obj_t)(mp_uint_t)val;
    } else if (val_type == 'S') {
        const char *s_val = (const char*)(uintptr_t)(mp_uint_t)val;
        return mp_obj_new_str(s_val, strlen(s_val));
    } else if (is_signed(val_type)) {
        if ((long long)MP_SMALL_INT_MIN <= val && val <= (long long)MP_SMALL_INT_MAX) {
            return mp_obj_new_int((mp_int_t)val);
        } else {
            return mp_obj_new_int_from_ll(val);
        }
    } else {
        if ((unsigned long long)val <= (unsigned long long)MP_SMALL_INT_MAX) {
            return mp_obj_new_int_from_uint((mp_uint_t)val);
        } else {
            return mp_obj_new_int_from_ull(val);
        }
    }
}
