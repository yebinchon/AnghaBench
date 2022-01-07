
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int mp_obj_new_str_via_qstr (char const*,size_t) ;
 char* mp_obj_str_get_data (int ,size_t*) ;

mp_obj_t mp_obj_str_intern_checked(mp_obj_t obj) {
    size_t len;
    const char *data = mp_obj_str_get_data(obj, &len);
    return mp_obj_new_str_via_qstr((const char*)data, len);
}
