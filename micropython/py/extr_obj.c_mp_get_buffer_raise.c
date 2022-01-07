
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_uint_t ;
typedef int mp_obj_t ;
typedef int mp_buffer_info_t ;


 int mp_get_buffer (int ,int *,int ) ;
 int mp_raise_TypeError (char*) ;

void mp_get_buffer_raise(mp_obj_t obj, mp_buffer_info_t *bufinfo, mp_uint_t flags) {
    if (!mp_get_buffer(obj, bufinfo, flags)) {
        mp_raise_TypeError("object with buffer protocol required");
    }
}
