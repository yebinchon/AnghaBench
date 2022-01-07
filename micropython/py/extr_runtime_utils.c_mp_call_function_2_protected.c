
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ret_val; } ;
typedef TYPE_1__ nlr_buf_t ;
typedef int mp_obj_t ;


 int MP_OBJ_FROM_PTR (int ) ;
 int MP_OBJ_NULL ;
 int mp_call_function_2 (int ,int ,int ) ;
 int mp_obj_print_exception (int *,int ) ;
 int mp_plat_print ;
 int nlr_pop () ;
 scalar_t__ nlr_push (TYPE_1__*) ;

mp_obj_t mp_call_function_2_protected(mp_obj_t fun, mp_obj_t arg1, mp_obj_t arg2) {
    nlr_buf_t nlr;
    if (nlr_push(&nlr) == 0) {
        mp_obj_t ret = mp_call_function_2(fun, arg1, arg2);
        nlr_pop();
        return ret;
    } else {
        mp_obj_print_exception(&mp_plat_print, MP_OBJ_FROM_PTR(nlr.ret_val));
        return MP_OBJ_NULL;
    }
}
