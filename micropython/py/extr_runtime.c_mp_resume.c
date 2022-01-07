
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int mp_vm_return_kind_t ;
struct TYPE_7__ {scalar_t__ (* iternext ) (scalar_t__) ;} ;
typedef TYPE_1__ mp_obj_type_t ;
typedef scalar_t__ mp_obj_t ;


 int MP_OBJ_FROM_PTR (TYPE_1__*) ;
 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_STOP_ITERATION ;
 int MP_QSTR___next__ ;
 int MP_QSTR_close ;
 int MP_QSTR_send ;
 int MP_QSTR_throw ;
 int MP_VM_RETURN_EXCEPTION ;
 int MP_VM_RETURN_NORMAL ;
 int MP_VM_RETURN_YIELD ;
 int assert (int) ;
 scalar_t__ mp_call_method_n_kw (int,int ,scalar_t__*) ;
 scalar_t__ mp_const_none ;
 int mp_load_method (scalar_t__,int ,scalar_t__*) ;
 int mp_load_method_maybe (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ mp_make_raise_obj (scalar_t__) ;
 scalar_t__ mp_obj_exception_match (scalar_t__,int ) ;
 int mp_obj_gen_resume (scalar_t__,scalar_t__,scalar_t__,scalar_t__*) ;
 TYPE_1__* mp_obj_get_type (scalar_t__) ;
 scalar_t__ mp_obj_is_subclass_fast (int ,int ) ;
 scalar_t__ mp_obj_new_exception_msg (int *,char*) ;
 TYPE_1__ mp_type_GeneratorExit ;
 int mp_type_RuntimeError ;
 TYPE_1__ mp_type_StopIteration ;
 TYPE_1__ mp_type_gen_instance ;
 scalar_t__ stub1 (scalar_t__) ;

mp_vm_return_kind_t mp_resume(mp_obj_t self_in, mp_obj_t send_value, mp_obj_t throw_value, mp_obj_t *ret_val) {
    assert((send_value != MP_OBJ_NULL) ^ (throw_value != MP_OBJ_NULL));
    mp_obj_type_t *type = mp_obj_get_type(self_in);

    if (type == &mp_type_gen_instance) {
        return mp_obj_gen_resume(self_in, send_value, throw_value, ret_val);
    }

    if (type->iternext != ((void*)0) && send_value == mp_const_none) {
        mp_obj_t ret = type->iternext(self_in);
        *ret_val = ret;
        if (ret != MP_OBJ_STOP_ITERATION) {
            return MP_VM_RETURN_YIELD;
        } else {


            return MP_VM_RETURN_NORMAL;
        }
    }

    mp_obj_t dest[3];


    if (send_value == mp_const_none) {
        mp_load_method_maybe(self_in, MP_QSTR___next__, dest);
        if (dest[0] != MP_OBJ_NULL) {
            *ret_val = mp_call_method_n_kw(0, 0, dest);
            return MP_VM_RETURN_YIELD;
        }
    }



    if (send_value != MP_OBJ_NULL) {
        mp_load_method(self_in, MP_QSTR_send, dest);
        dest[2] = send_value;
        *ret_val = mp_call_method_n_kw(1, 0, dest);
        return MP_VM_RETURN_YIELD;
    }

    assert(throw_value != MP_OBJ_NULL);
    {
        if (mp_obj_is_subclass_fast(MP_OBJ_FROM_PTR(mp_obj_get_type(throw_value)), MP_OBJ_FROM_PTR(&mp_type_GeneratorExit))) {
            mp_load_method_maybe(self_in, MP_QSTR_close, dest);
            if (dest[0] != MP_OBJ_NULL) {


                *ret_val = mp_call_method_n_kw(0, 0, dest);

                return MP_VM_RETURN_NORMAL;
            }
        } else {
            mp_load_method_maybe(self_in, MP_QSTR_throw, dest);
            if (dest[0] != MP_OBJ_NULL) {
                dest[2] = throw_value;
                *ret_val = mp_call_method_n_kw(1, 0, dest);


                return MP_VM_RETURN_YIELD;
            }
        }





        if (mp_obj_exception_match(throw_value, MP_OBJ_FROM_PTR(&mp_type_StopIteration))) {

            *ret_val = mp_obj_new_exception_msg(&mp_type_RuntimeError, "generator raised StopIteration");
        } else {
            *ret_val = mp_make_raise_obj(throw_value);
        }
        return MP_VM_RETURN_EXCEPTION;
    }
}
