
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int_t ;
typedef int mp_const_obj_t ;


 int mp_obj_int_get_truncated (int ) ;

mp_int_t mp_obj_int_get_checked(mp_const_obj_t self_in) {

    return mp_obj_int_get_truncated(self_in);
}
