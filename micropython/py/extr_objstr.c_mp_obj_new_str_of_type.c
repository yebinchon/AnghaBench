
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_type_t ;
typedef int mp_obj_t ;
typedef int byte ;


 int mp_obj_new_bytes (int const*,size_t) ;
 int mp_obj_new_str (char const*,size_t) ;
 int const mp_type_str ;

mp_obj_t mp_obj_new_str_of_type(const mp_obj_type_t *type, const byte* data, size_t len) {
    if (type == &mp_type_str) {
        return mp_obj_new_str((const char*)data, len);
    } else {
        return mp_obj_new_bytes(data, len);
    }
}
