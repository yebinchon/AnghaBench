
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;
typedef int mp_const_obj_t ;


 int MP_OBJ_FROM_PTR (int ) ;
 int mp_obj_get_type (int ) ;
 scalar_t__ mp_obj_is_exception_instance (int ) ;
 int mp_obj_is_subclass_fast (int ,int ) ;

bool mp_obj_exception_match(mp_obj_t exc, mp_const_obj_t exc_type) {

    if (mp_obj_is_exception_instance(exc)) {
        exc = MP_OBJ_FROM_PTR(mp_obj_get_type(exc));
    }
    return mp_obj_is_subclass_fast(exc, exc_type);
}
