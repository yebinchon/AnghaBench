
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mp_obj_fun_bc_t ;


 int MP_OBJ_FROM_PTR (int *) ;
 int mp_arg_error_terse_mismatch () ;
 int mp_obj_fun_get_name (int ) ;
 int mp_obj_new_exception_msg_varg (int *,char*,size_t,size_t,...) ;
 int mp_type_TypeError ;
 int nlr_raise (int ) ;

void fun_pos_args_mismatch(mp_obj_fun_bc_t *f, size_t expected, size_t given) {


    (void)f;
    (void)expected;
    (void)given;
    mp_arg_error_terse_mismatch();
}
