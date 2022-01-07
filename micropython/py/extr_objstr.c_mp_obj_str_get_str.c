
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int GET_STR_DATA_LEN (int ,scalar_t__,int ) ;
 int bad_implicit_conversion (int ) ;
 int l ;
 scalar_t__ mp_obj_is_str_or_bytes (int ) ;
 scalar_t__ s ;

const char *mp_obj_str_get_str(mp_obj_t self_in) {
    if (mp_obj_is_str_or_bytes(self_in)) {
        GET_STR_DATA_LEN(self_in, s, l);
        (void)l;
        return (const char*)s;
    } else {
        bad_implicit_conversion(self_in);
    }
}
