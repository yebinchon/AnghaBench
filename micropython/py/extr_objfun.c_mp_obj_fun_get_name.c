
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int qstr ;
struct TYPE_4__ {int * type; } ;
struct TYPE_5__ {int * bytecode; TYPE_1__ base; } ;
typedef TYPE_2__ mp_obj_fun_bc_t ;
typedef int mp_const_obj_t ;
typedef int byte ;


 int MP_BC_PRELUDE_SIG_DECODE (int const*) ;
 TYPE_2__* MP_OBJ_TO_PTR (int ) ;
 int MP_QSTR_ ;
 int mp_obj_code_get_name (int const*) ;
 int mp_type_fun_native ;
 int mp_type_native_gen_wrap ;

qstr mp_obj_fun_get_name(mp_const_obj_t fun_in) {
    const mp_obj_fun_bc_t *fun = MP_OBJ_TO_PTR(fun_in);







    const byte *bc = fun->bytecode;
    MP_BC_PRELUDE_SIG_DECODE(bc);
    return mp_obj_code_get_name(bc);
}
