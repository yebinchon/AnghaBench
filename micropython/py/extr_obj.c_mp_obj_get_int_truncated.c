
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_int_t ;
typedef int mp_const_obj_t ;


 int mp_obj_get_int (int ) ;
 int mp_obj_int_get_truncated (int ) ;
 scalar_t__ mp_obj_is_int (int ) ;

mp_int_t mp_obj_get_int_truncated(mp_const_obj_t arg) {
    if (mp_obj_is_int(arg)) {
        return mp_obj_int_get_truncated(arg);
    } else {
        return mp_obj_get_int(arg);
    }
}
