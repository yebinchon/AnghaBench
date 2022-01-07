
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int kind; int scope_flags; int const_table; int fun_data; int type_sig; int n_pos_args; } ;
typedef TYPE_1__ mp_raw_code_t ;
typedef scalar_t__ mp_obj_t ;
struct TYPE_7__ {TYPE_1__ const* rc; } ;
typedef TYPE_2__ mp_obj_fun_bc_t ;
struct TYPE_8__ {int * type; } ;
typedef TYPE_3__ mp_obj_base_t ;


 int DEBUG_OP_printf (char*,TYPE_1__ const*) ;
 int MP_CODE_BYTECODE ;



 scalar_t__ MP_OBJ_NULL ;
 scalar_t__ MP_OBJ_TO_PTR (scalar_t__) ;
 int MP_SCOPE_FLAG_GENERATOR ;
 int assert (int) ;
 scalar_t__ mp_obj_is_type (scalar_t__,int *) ;
 scalar_t__ mp_obj_new_fun_asm (int ,int ,int ) ;
 scalar_t__ mp_obj_new_fun_bc (scalar_t__,scalar_t__,int ,int ) ;
 scalar_t__ mp_obj_new_fun_native (scalar_t__,scalar_t__,int ,int ) ;
 int mp_type_dict ;
 int mp_type_gen_wrap ;
 int mp_type_native_gen_wrap ;
 int mp_type_tuple ;

mp_obj_t mp_make_function_from_raw_code(const mp_raw_code_t *rc, mp_obj_t def_args, mp_obj_t def_kw_args) {
    DEBUG_OP_printf("make_function_from_raw_code %p\n", rc);
    assert(rc != ((void*)0));


    assert(def_args == MP_OBJ_NULL || mp_obj_is_type(def_args, &mp_type_tuple));


    assert(def_kw_args == MP_OBJ_NULL || mp_obj_is_type(def_kw_args, &mp_type_dict));


    mp_obj_t fun;
    switch (rc->kind) {
        default:

            assert(rc->kind == MP_CODE_BYTECODE);
            fun = mp_obj_new_fun_bc(def_args, def_kw_args, rc->fun_data, rc->const_table);

            if ((rc->scope_flags & MP_SCOPE_FLAG_GENERATOR) != 0) {
                ((mp_obj_base_t*)MP_OBJ_TO_PTR(fun))->type = &mp_type_gen_wrap;
            }






            break;
    }

    return fun;
}
