
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int MP_OBJ_NEW_QSTR (int ) ;
 int qstr_from_strn (char const*,size_t) ;

mp_obj_t mp_obj_new_str_via_qstr(const char* data, size_t len) {
    return MP_OBJ_NEW_QSTR(qstr_from_strn(data, len));
}
