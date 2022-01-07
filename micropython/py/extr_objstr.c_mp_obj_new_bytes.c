
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef int byte ;


 int mp_obj_new_str_copy (int *,int const*,size_t) ;
 int mp_type_bytes ;

mp_obj_t mp_obj_new_bytes(const byte* data, size_t len) {
    return mp_obj_new_str_copy(&mp_type_bytes, data, len);
}
