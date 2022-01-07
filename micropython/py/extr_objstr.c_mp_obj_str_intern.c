
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int GET_STR_DATA_LEN (int ,scalar_t__,int ) ;
 scalar_t__ data ;
 int len ;
 int mp_obj_new_str_via_qstr (char const*,int ) ;

mp_obj_t mp_obj_str_intern(mp_obj_t str) {
    GET_STR_DATA_LEN(str, data, len);
    return mp_obj_new_str_via_qstr((const char*)data, len);
}
