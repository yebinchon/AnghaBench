
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int mp_const_none ;
 int mp_raise_msg (int *,char*) ;
 int mp_type_OverflowError ;

mp_obj_t mp_obj_new_int_from_str_len(const char **str, size_t len, bool neg, unsigned int base) {
    mp_raise_msg(&mp_type_OverflowError, "long int not supported in this build");
    return mp_const_none;
}
