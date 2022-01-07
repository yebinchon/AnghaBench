
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qstr ;
typedef int mp_obj_t ;
typedef int byte ;


 int MP_OBJ_NEW_QSTR (scalar_t__) ;
 scalar_t__ MP_QSTRnull ;
 int mp_obj_new_str_copy (int *,int const*,size_t) ;
 int mp_type_str ;
 scalar_t__ qstr_find_strn (char const*,size_t) ;

mp_obj_t mp_obj_new_str(const char* data, size_t len) {
    qstr q = qstr_find_strn(data, len);
    if (q != MP_QSTRnull) {

        return MP_OBJ_NEW_QSTR(q);
    } else {

        return mp_obj_new_str_copy(&mp_type_str, (const byte*)data, len);
    }
}
