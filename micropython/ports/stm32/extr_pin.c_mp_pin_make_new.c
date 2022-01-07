
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pin_obj_t ;
typedef int mp_obj_type_t ;
typedef int mp_obj_t ;
typedef int mp_map_t ;


 int MP_OBJ_FROM_PTR (int const*) ;
 int MP_OBJ_FUN_ARGS_MAX ;
 int mp_arg_check_num (size_t,size_t,int,int ,int) ;
 int mp_map_init_fixed_table (int *,size_t,int const*) ;
 int * pin_find (int const) ;
 int pin_obj_init_helper (int const*,size_t,int const*,int *) ;

mp_obj_t mp_pin_make_new(const mp_obj_type_t *type, size_t n_args, size_t n_kw, const mp_obj_t *args) {
    mp_arg_check_num(n_args, n_kw, 1, MP_OBJ_FUN_ARGS_MAX, 1);


    const pin_obj_t *pin = pin_find(args[0]);

    if (n_args > 1 || n_kw > 0) {

        mp_map_t kw_args;
        mp_map_init_fixed_table(&kw_args, n_kw, args + n_args);
        pin_obj_init_helper(pin, n_args - 1, args + 1, &kw_args);
    }

    return MP_OBJ_FROM_PTR(pin);
}
