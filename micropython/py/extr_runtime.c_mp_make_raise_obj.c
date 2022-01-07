
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_t ;


 int DEBUG_printf (char*,int ) ;
 int mp_call_function_n_kw (int ,int ,int ,int *) ;
 scalar_t__ mp_obj_is_exception_instance (int ) ;
 scalar_t__ mp_obj_is_exception_type (int ) ;
 int mp_obj_new_exception_msg (int *,char*) ;
 int mp_type_TypeError ;

mp_obj_t mp_make_raise_obj(mp_obj_t o) {
    DEBUG_printf("raise %p\n", o);
    if (mp_obj_is_exception_type(o)) {




        return mp_call_function_n_kw(o, 0, 0, ((void*)0));
    } else if (mp_obj_is_exception_instance(o)) {

        return o;
    } else {

        return mp_obj_new_exception_msg(&mp_type_TypeError, "exceptions must derive from BaseException");
    }
}
