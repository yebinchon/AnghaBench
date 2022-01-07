
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mp_obj_t ;
struct TYPE_3__ {int n_alloc; int args; int n_kw; int n_args; int fun; } ;
typedef TYPE_1__ mp_call_args_t ;


 int mp_call_function_n_kw (int ,int ,int ,int ) ;
 int mp_call_prepare_args_n_kw_var (int,size_t,int const*,TYPE_1__*) ;
 int mp_nonlocal_free (int ,int) ;

mp_obj_t mp_call_method_n_kw_var(bool have_self, size_t n_args_n_kw, const mp_obj_t *args) {
    mp_call_args_t out_args;
    mp_call_prepare_args_n_kw_var(have_self, n_args_n_kw, args, &out_args);

    mp_obj_t res = mp_call_function_n_kw(out_args.fun, out_args.n_args, out_args.n_kw, out_args.args);
    mp_nonlocal_free(out_args.args, out_args.n_alloc * sizeof(mp_obj_t));

    return res;
}
